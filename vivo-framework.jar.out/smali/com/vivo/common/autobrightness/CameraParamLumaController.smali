.class public Lcom/vivo/common/autobrightness/CameraParamLumaController;
.super Ljava/lang/Object;
.source "CameraParamLumaController.java"


# static fields
.field private static final LOW_POWER_THRESHOLD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CameraParamLumaController"


# instance fields
.field private mCameraLumaServiceRunning:Z

.field private mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

.field private mContext:Landroid/content/Context;

.field private mControllerState:I

.field private mDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLightLux:I

.field private mLowPower:Z

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedLumaByLight:Z

.field private mPowerFilter:Landroid/content/IntentFilter;

.field private mPowerPercent:I

.field private mPowerReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerReceiverRunnable:Ljava/lang/Runnable;

.field private mRunnable:Ljava/lang/Runnable;

.field private mStartCameraLumaServiceTime:J

.field private mStateChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;

.field private mUserModifyBrightness:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x60

    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    .line 39
    iput-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mContext:Landroid/content/Context;

    .line 41
    iput-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCameraLumaServiceRunning:Z

    .line 43
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mUserModifyBrightness:Z

    .line 44
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mNeedLumaByLight:Z

    .line 45
    const/16 v0, 0x1e

    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mLightLux:I

    .line 46
    const/16 v0, 0x14

    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mDelay:I

    .line 47
    iput-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mRunnable:Ljava/lang/Runnable;

    .line 51
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mLowPower:Z

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStartCameraLumaServiceTime:J

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerPercent:I

    .line 56
    iput-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStateChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;

    .line 58
    new-instance v0, Lcom/vivo/common/autobrightness/CameraParamLumaController$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/CameraParamLumaController$1;-><init>(Lcom/vivo/common/autobrightness/CameraParamLumaController;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerReceiverRunnable:Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStateChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraParamLumaController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/vivo/common/autobrightness/CameraParamLumaController$2;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/CameraParamLumaController$2;-><init>(Lcom/vivo/common/autobrightness/CameraParamLumaController;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mMap:Ljava/util/HashMap;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerFilter:Landroid/content/IntentFilter;

    .line 81
    new-instance v0, Lcom/vivo/common/autobrightness/CameraParamLumaController$3;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/CameraParamLumaController$3;-><init>(Lcom/vivo/common/autobrightness/CameraParamLumaController;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerReceiverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/CollectUseData;->getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/vivo/common/autobrightness/CollectUseData;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/CameraParamLumaController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/CameraParamLumaController;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/autobrightness/CameraParamLumaController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/autobrightness/CameraParamLumaController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/vivo/common/autobrightness/CameraParamLumaController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaController;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerPercent:I

    return p1
.end method

.method static synthetic access$500(Lcom/vivo/common/autobrightness/CameraParamLumaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaController;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mLowPower:Z

    return v0
.end method

.method static synthetic access$502(Lcom/vivo/common/autobrightness/CameraParamLumaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaController;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mLowPower:Z

    return p1
.end method

.method private clearBit(I)I
    .locals 6
    .param p1, "bit"    # I

    .prologue
    .line 145
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    .line 146
    .local v0, "tempState":I
    sparse-switch p1, :sswitch_data_0

    .line 161
    const-string v1, "CameraParamLumaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearBit unkown bit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBit mControllerState changed form not StateInfo.STATE_ALLOWED(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to StateInfo.STATE_ALLOWED."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStateChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;

    iget v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    invoke-interface {v1, v2}, Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;->onAllowedStateChanged(I)V

    .line 167
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    :goto_1
    iget v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    return v1

    .line 158
    :sswitch_0
    iget v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    goto :goto_0

    .line 170
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBit mControllerState changed form 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method private isAllowed()Z
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllowedToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "CameraParamLumaController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method

.method private setBit(I)I
    .locals 6
    .param p1, "bit"    # I

    .prologue
    .line 114
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    .line 115
    .local v0, "tempState":I
    sparse-switch p1, :sswitch_data_0

    .line 130
    const-string v1, "CameraParamLumaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBit unkown bit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    if-nez v0, :cond_0

    iget v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBit mControllerState changed form StateInfo.STATE_ALLOWED to not allowed(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStateChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;

    iget v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    invoke-interface {v1, v2}, Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;->onAllowedStateChanged(I)V

    .line 136
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    :goto_1
    iget v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    return v1

    .line 127
    :sswitch_0
    iget v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBit mControllerState changed form 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method private startCameraLumaInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 417
    const-string v2, "startCameraLumaInternal begin."

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    .line 418
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 419
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.vivo.cameraparamluma"

    const-string v4, "com.vivo.cameraparamluma.CameraParamLumaService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStartCameraLumaServiceTime:J

    .line 423
    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    .line 424
    .local v0, "cn":Landroid/content/ComponentName;
    const-string v2, "startCameraLumaInternal end."

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStateChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;

    invoke-interface {v2, v5}, Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;->onServiceStateChanged(Z)V

    .line 426
    if-eqz v0, :cond_0

    .line 428
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCameraLumaServiceRunning:Z

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCameraLumaServiceRunning:Z

    .line 433
    const-string v2, "CameraParamLumaController"

    const-string v3, "start startCameraLumaInternal service failed."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopCameraLumaInternal()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v5, 0x0

    .line 439
    const-string v2, "stopCameraLumaInternal...."

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    .line 440
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 441
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.vivo.cameraparamluma"

    const-string v4, "com.vivo.cameraparamluma.CameraParamLumaService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 442
    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStateChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;

    invoke-interface {v2, v5}, Lcom/vivo/common/autobrightness/CameraLumaCallback$StateChangedCallback;->onServiceStateChanged(Z)V

    .line 443
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCameraLumaServiceRunning:Z

    .line 444
    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 447
    .local v6, "now":J
    iget-wide v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStartCameraLumaServiceTime:J

    cmp-long v2, v2, v12

    if-eqz v2, :cond_0

    .line 448
    new-instance v1, Lcom/vivo/common/autobrightness/DataParameter;

    const-string v2, "1005"

    const-string v3, "10053"

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStartCameraLumaServiceTime:J

    iget-wide v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStartCameraLumaServiceTime:J

    sub-long v8, v6, v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/vivo/common/autobrightness/DataParameter;-><init>(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 450
    .local v1, "data":Lcom/vivo/common/autobrightness/DataParameter;
    const-string v2, "CameraParamLumaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collect camera luma used time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStartCameraLumaServiceTime:J

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

    invoke-virtual {v2, v1}, Lcom/vivo/common/autobrightness/CollectUseData;->sendDataParameter(Lcom/vivo/common/autobrightness/DataParameter;)V

    .line 455
    .end local v1    # "data":Lcom/vivo/common/autobrightness/DataParameter;
    :goto_0
    iput-wide v12, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStartCameraLumaServiceTime:J

    .line 457
    return-void

    .line 453
    :cond_0
    const-string v2, "CameraParamLumaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStartCameraLumaServiceTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mStartCameraLumaServiceTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " No need to record use data."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    .local v0, "flattened":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 197
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 203
    .end local v2    # "k":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPowerPercent()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mPowerPercent:I

    return v0
.end method

.method public handleStateChanged()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 396
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCameraLumaServiceRunning:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->isAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mNeedLumaByLight:Z

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "handleStateChanged call startCameraLumaInternal"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    .line 398
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCameraLumaServiceRunning:Z

    .line 399
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->startCameraLumaInternal()V

    .line 412
    :goto_0
    return v2

    .line 402
    :cond_0
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCameraLumaServiceRunning:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->isAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mNeedLumaByLight:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mUserModifyBrightness:Z

    if-eqz v0, :cond_2

    .line 403
    :cond_1
    const-string v0, "handleStateChanged call stopCameraLumaInternal"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    .line 404
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mUserModifyBrightness:Z

    .line 405
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCameraLumaServiceRunning:Z

    .line 406
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->stopCameraLumaInternal()V

    goto :goto_0

    .line 409
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStateChanged keep current Running="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCameraLumaServiceRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isAllowed()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->isAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->isAllowedToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") mNeedLumaByLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mNeedLumaByLight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyStateChanged(I)I
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x2

    const-wide/16 v4, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 236
    packed-switch p1, :pswitch_data_0

    .line 380
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    .line 383
    :cond_0
    :goto_0
    return v3

    .line 238
    :pswitch_1
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->setBit(I)I

    move-result v0

    .line 239
    .local v0, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_LIGHT_DISABLE setBit(StateInfo.STATE_BIT_LIGHT)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v0    # "ret":I
    :pswitch_2
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 243
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_LIGHT_ENABLE clearBit(StateInfo.STATE_BIT_LIGHT)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    .end local v0    # "ret":I
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 248
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_SCREEN_ON clearBit(StateInfo.STATE_BIT_SCREEN)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v0    # "ret":I
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->setBit(I)I

    move-result v0

    .line 252
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_SCREEN_DIM setBit(StateInfo.STATE_BIT_SCREEN)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v0    # "ret":I
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->setBit(I)I

    move-result v0

    .line 256
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_SCREEN_DIM setBit(StateInfo.STATE_BIT_SCREEN)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    .end local v0    # "ret":I
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->setBit(I)I

    move-result v0

    .line 261
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_POWER_SAVING_ON setBit(StateInfo.STATE_BIT_POWER_SAVING)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    .end local v0    # "ret":I
    :pswitch_7
    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 265
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_POWER_SAVING_OFF clearBit(StateInfo.STATE_BIT_POWER_SAVING)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    .end local v0    # "ret":I
    :pswitch_8
    invoke-direct {p0, v6}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 270
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_ALS_PROXIMITY_FAR clearBit(StateInfo.STATE_BIT_ALS_PROXIMITY)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    .end local v0    # "ret":I
    :pswitch_9
    invoke-direct {p0, v6}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->setBit(I)I

    move-result v0

    .line 275
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_ALS_PROXIMITY_NEAR setBit(StateInfo.STATE_BIT_ALS_PROXIMITY)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    .end local v0    # "ret":I
    :pswitch_a
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->setBit(I)I

    move-result v0

    .line 280
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_CALL_PROXIMITY_NEAR setBit(StateInfo.STATE_BIT_CALL_PROXIMITY)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    .end local v0    # "ret":I
    :pswitch_b
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 284
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_CALL_PROXIMITY_FAR clearBit(StateInfo.STATE_BIT_CALL_PROXIMITY)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    .end local v0    # "ret":I
    :pswitch_c
    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 289
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_PHONE_IDLE clearBit(StateInfo.STATE_BIT_PHONE)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    .end local v0    # "ret":I
    :pswitch_d
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isPhoneNotUseCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->setBit(I)I

    move-result v0

    .line 301
    .restart local v0    # "ret":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_PHONE_DIAL/RING/OFFHOOK() setBit(StateInfo.STATE_BIT_PHONE)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    .end local v0    # "ret":I
    :cond_1
    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_1

    .line 305
    .end local v0    # "ret":I
    :pswitch_e
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 306
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_BOOT_COMPLETE clearBit(StateInfo.STATE_BIT_BOOT)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    .end local v0    # "ret":I
    :pswitch_f
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->setBit(I)I

    move-result v0

    .line 312
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_BOOT_UNCOMPLETE setBit(StateInfo.STATE_BIT_BOOT)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    .end local v0    # "ret":I
    :pswitch_10
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->setBit(I)I

    move-result v0

    .line 317
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_BATTERY_LOW setBit(StateInfo.STATE_BIT_BATTERY)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    .end local v0    # "ret":I
    :pswitch_11
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 322
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_BATTERY_NORMAL clearBit(StateInfo.STATE_BIT_BATTERY)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    .end local v0    # "ret":I
    :pswitch_12
    const/16 v1, 0x100

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->setBit(I)I

    move-result v0

    .line 327
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_UNBLANKALLDISPLAY_IN setBit(StateInfo.STATE_BIT_UNBLANKALLDISPLAY)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    .end local v0    # "ret":I
    :pswitch_13
    const/16 v1, 0x100

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 332
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_UNBLANKALLDISPLAY_OUT clearBit(StateInfo.STATE_BIT_UNBLANKALLDISPLAY)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    .end local v0    # "ret":I
    :pswitch_14
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 337
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_HALL_NEAR clearBit(StateInfo.STATE_BIT_HALL)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    .end local v0    # "ret":I
    :pswitch_15
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 342
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_HALL_AWAY clearBit(StateInfo.STATE_BIT_HALL)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    .end local v0    # "ret":I
    :pswitch_16
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->setBit(I)I

    move-result v0

    .line 347
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_FLASHLIGHT_ON setBit(StateInfo.STATE_BIT_FLASHLIGHT)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    .end local v0    # "ret":I
    :pswitch_17
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->clearBit(I)I

    move-result v0

    .line 352
    .restart local v0    # "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateInfo.STATE_FLASHLIGHT_OFF clearBit(StateInfo.STATE_BIT_FLASHLIGHT)=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    .end local v0    # "ret":I
    :pswitch_18
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCameraLumaServiceRunning:Z

    if-eqz v1, :cond_0

    .line 360
    iput-boolean v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mUserModifyBrightness:Z

    .line 361
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    const-string v1, "notifyStateChanged StateInfo.STATE_USER_MODIFY_BRIGHTNESS"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    :pswitch_19
    iput-boolean v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mNeedLumaByLight:Z

    .line 368
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    const-string v1, "notifyStateChanged StateInfo.STATE_LIGHT_NEED_LUMA"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :pswitch_1a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mNeedLumaByLight:Z

    .line 375
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    const-string v1, "notifyStateChanged StateInfo.STATE_LIGHT_STOP_LUMA"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/CameraParamLumaController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_15
        :pswitch_14
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mControllerState=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mControllerState:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mCameraLumaServiceRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mCameraLumaServiceRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mNeedLumaByLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mNeedLumaByLight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 7
    .param p1, "flattened"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 218
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3b

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 219
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 220
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "kv":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 222
    .local v3, "pos":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 225
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "k":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "v":Ljava/lang/String;
    iget-object v6, p0, Lcom/vivo/common/autobrightness/CameraParamLumaController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 229
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "kv":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v5    # "v":Ljava/lang/String;
    :cond_1
    return-void
.end method
