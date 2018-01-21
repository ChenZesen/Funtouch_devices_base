.class public Landroid/media/audiofx/Spectrum;
.super Ljava/lang/Object;
.source "Spectrum.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Spectrum$NativeEventHandler;,
        Landroid/media/audiofx/Spectrum$OnServerDiedListener;,
        Landroid/media/audiofx/Spectrum$OnDataCaptureListener;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I = -0x2

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final ERROR_NO_INIT:I = -0x3

.field public static final ERROR_NO_MEMORY:I = -0x6

.field private static final NATIVE_EVENT_FFT_CAPTURE:I = 0x1

.field private static final NATIVE_EVENT_PCM_CAPTURE:I = 0x0

.field private static final NATIVE_EVENT_SERVER_DIED:I = 0x2

.field public static final SCALING_MODE_AS_PLAYED:I = 0x1

.field public static final SCALING_MODE_NORMALIZED:I = 0x0

.field public static final STATE_ENABLED:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Spectrum-JAVA"


# instance fields
.field private mCaptureListener:Landroid/media/audiofx/Spectrum$OnDataCaptureListener;

.field private mId:I

.field private mJniData:I

.field private final mListenerLock:Ljava/lang/Object;

.field private mNativeEventHandler:Landroid/media/audiofx/Spectrum$NativeEventHandler;

.field private mNativeSpectrum:I

.field private mServerDiedListener:Landroid/media/audiofx/Spectrum$OnServerDiedListener;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "Spectrum_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Landroid/media/audiofx/Spectrum;->native_init()V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput v2, p0, Landroid/media/audiofx/Spectrum;->mState:I

    .line 163
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    .line 172
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/audiofx/Spectrum;->mListenerLock:Ljava/lang/Object;

    .line 176
    iput-object v3, p0, Landroid/media/audiofx/Spectrum;->mNativeEventHandler:Landroid/media/audiofx/Spectrum$NativeEventHandler;

    .line 180
    iput-object v3, p0, Landroid/media/audiofx/Spectrum;->mCaptureListener:Landroid/media/audiofx/Spectrum$OnDataCaptureListener;

    .line 184
    iput-object v3, p0, Landroid/media/audiofx/Spectrum;->mServerDiedListener:Landroid/media/audiofx/Spectrum$OnServerDiedListener;

    .line 206
    new-array v0, v4, [I

    .line 208
    .local v0, "id":[I
    iget-object v3, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 209
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Landroid/media/audiofx/Spectrum;->mState:I

    .line 211
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p1, v0}, Landroid/media/audiofx/Spectrum;->native_setup(Ljava/lang/Object;I[I)I

    move-result v1

    .line 212
    .local v1, "result":I
    if-eqz v1, :cond_0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 213
    const-string v2, "Spectrum-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when initializing Spectrum."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    packed-switch v1, :pswitch_data_0

    .line 218
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot initialize Spectrum engine, error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 216
    .restart local v1    # "result":I
    :pswitch_0
    :try_start_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Effect library not loaded"

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_0
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Landroid/media/audiofx/Spectrum;->mId:I

    .line 223
    invoke-direct {p0}, Landroid/media/audiofx/Spectrum;->native_getEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    const/4 v2, 0x2

    iput v2, p0, Landroid/media/audiofx/Spectrum;->mState:I

    .line 228
    :goto_0
    monitor-exit v3

    .line 229
    return-void

    .line 226
    :cond_1
    const/4 v2, 0x1

    iput v2, p0, Landroid/media/audiofx/Spectrum;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/media/audiofx/Spectrum;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/Spectrum;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/audiofx/Spectrum;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/Spectrum;)Landroid/media/audiofx/Spectrum$OnDataCaptureListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/Spectrum;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/audiofx/Spectrum;->mCaptureListener:Landroid/media/audiofx/Spectrum$OnDataCaptureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/audiofx/Spectrum;)Landroid/media/audiofx/Spectrum$OnServerDiedListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/Spectrum;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/audiofx/Spectrum;->mServerDiedListener:Landroid/media/audiofx/Spectrum$OnServerDiedListener;

    return-object v0
.end method

.method public static native getCaptureSizeRange()[I
.end method

.method public static native getMaxCaptureRate()I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getCaptureSize()I
.end method

.method private final native native_getEnabled()Z
.end method

.method private final native native_getFft([B)I
.end method

.method private final native native_getSamplingRate()I
.end method

.method private final native native_getScalingMode()I
.end method

.method private final native native_getWaveForm([B)I
.end method

.method private static final native native_init()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setCaptureSize(I)I
.end method

.method private final native native_setEnabled(Z)I
.end method

.method private final native native_setPeriodicCapture(IZZ)I
.end method

.method private final native native_setScalingMode(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;I[I)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "effect_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 690
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "effect_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiofx/Spectrum;

    .line 691
    .local v1, "visu":Landroid/media/audiofx/Spectrum;
    if-nez v1, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget-object v2, v1, Landroid/media/audiofx/Spectrum;->mNativeEventHandler:Landroid/media/audiofx/Spectrum$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 696
    iget-object v2, v1, Landroid/media/audiofx/Spectrum;->mNativeEventHandler:Landroid/media/audiofx/Spectrum$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/audiofx/Spectrum$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 697
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/audiofx/Spectrum;->mNativeEventHandler:Landroid/media/audiofx/Spectrum$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/audiofx/Spectrum$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/media/audiofx/Spectrum;->native_finalize()V

    .line 246
    return-void
.end method

.method public getCaptureSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v1, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Spectrum;->mState:I

    if-nez v0, :cond_0

    .line 336
    const/4 v0, -0x3

    monitor-exit v1

    .line 338
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/media/audiofx/Spectrum;->native_getCaptureSize()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEnabled()Z
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Spectrum;->mState:I

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    monitor-exit v1

    .line 285
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/media/audiofx/Spectrum;->native_getEnabled()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFft([B)I
    .locals 3
    .param p1, "fft"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v1, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Spectrum;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 463
    const/4 v0, -0x5

    monitor-exit v1

    .line 465
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/audiofx/Spectrum;->native_getFft([B)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSamplingRate()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v1, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Spectrum;->mState:I

    if-nez v0, :cond_0

    .line 387
    const/4 v0, -0x3

    monitor-exit v1

    .line 389
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/media/audiofx/Spectrum;->native_getSamplingRate()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getScalingMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v1, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Spectrum;->mState:I

    if-nez v0, :cond_0

    .line 372
    const/4 v0, -0x3

    monitor-exit v1

    .line 374
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/media/audiofx/Spectrum;->native_getScalingMode()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWaveForm([B)I
    .locals 3
    .param p1, "waveform"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v1, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Spectrum;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 409
    const/4 v0, -0x5

    monitor-exit v1

    .line 411
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/audiofx/Spectrum;->native_getWaveForm([B)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    invoke-direct {p0}, Landroid/media/audiofx/Spectrum;->native_release()V

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/Spectrum;->mState:I

    .line 240
    monitor-exit v1

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCaptureSize(I)I
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v1, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Spectrum;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 321
    const/4 v0, -0x5

    monitor-exit v1

    .line 323
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/audiofx/Spectrum;->native_setCaptureSize(I)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDataCaptureListener(Landroid/media/audiofx/Spectrum$OnDataCaptureListener;IZZ)I
    .locals 4
    .param p1, "listener"    # Landroid/media/audiofx/Spectrum$OnDataCaptureListener;
    .param p2, "rate"    # I
    .param p3, "waveform"    # Z
    .param p4, "fft"    # Z

    .prologue
    .line 519
    iget-object v3, p0, Landroid/media/audiofx/Spectrum;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 520
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/Spectrum;->mCaptureListener:Landroid/media/audiofx/Spectrum$OnDataCaptureListener;

    .line 521
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    if-nez p1, :cond_0

    .line 524
    const/4 p3, 0x0

    .line 525
    const/4 p4, 0x0

    .line 527
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Landroid/media/audiofx/Spectrum;->native_setPeriodicCapture(IZZ)I

    move-result v1

    .line 528
    .local v1, "status":I
    if-nez v1, :cond_1

    .line 529
    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/media/audiofx/Spectrum;->mNativeEventHandler:Landroid/media/audiofx/Spectrum$NativeEventHandler;

    if-nez v2, :cond_1

    .line 531
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_2

    .line 532
    new-instance v2, Landroid/media/audiofx/Spectrum$NativeEventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/audiofx/Spectrum$NativeEventHandler;-><init>(Landroid/media/audiofx/Spectrum;Landroid/media/audiofx/Spectrum;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/audiofx/Spectrum;->mNativeEventHandler:Landroid/media/audiofx/Spectrum$NativeEventHandler;

    .line 541
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    :goto_0
    return v1

    .line 521
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 533
    .restart local v0    # "looper":Landroid/os/Looper;
    .restart local v1    # "status":I
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 534
    new-instance v2, Landroid/media/audiofx/Spectrum$NativeEventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/audiofx/Spectrum$NativeEventHandler;-><init>(Landroid/media/audiofx/Spectrum;Landroid/media/audiofx/Spectrum;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/audiofx/Spectrum;->mNativeEventHandler:Landroid/media/audiofx/Spectrum$NativeEventHandler;

    goto :goto_0

    .line 536
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/audiofx/Spectrum;->mNativeEventHandler:Landroid/media/audiofx/Spectrum$NativeEventHandler;

    .line 537
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public setEnabled(Z)I
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 258
    iget-object v3, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 259
    :try_start_0
    iget v4, p0, Landroid/media/audiofx/Spectrum;->mState:I

    if-nez v4, :cond_0

    .line 260
    const/4 v0, -0x3

    monitor-exit v3

    .line 270
    :goto_0
    return v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    .line 263
    .local v0, "status":I
    if-eqz p1, :cond_1

    iget v4, p0, Landroid/media/audiofx/Spectrum;->mState:I

    if-eq v4, v2, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget v4, p0, Landroid/media/audiofx/Spectrum;->mState:I

    if-ne v4, v1, :cond_3

    .line 265
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/audiofx/Spectrum;->native_setEnabled(Z)I

    move-result v0

    .line 266
    if-nez v0, :cond_3

    .line 267
    if-eqz p1, :cond_4

    :goto_1
    iput v1, p0, Landroid/media/audiofx/Spectrum;->mState:I

    .line 270
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 271
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "status":I
    :cond_4
    move v1, v2

    .line 267
    goto :goto_1
.end method

.method public setScalingMode(I)I
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v1, p0, Landroid/media/audiofx/Spectrum;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Spectrum;->mState:I

    if-nez v0, :cond_0

    .line 355
    const/4 v0, -0x3

    monitor-exit v1

    .line 357
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/audiofx/Spectrum;->native_setScalingMode(I)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setServerDiedListener(Landroid/media/audiofx/Spectrum$OnServerDiedListener;)I
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/Spectrum$OnServerDiedListener;

    .prologue
    .line 577
    iget-object v1, p0, Landroid/media/audiofx/Spectrum;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/Spectrum;->mServerDiedListener:Landroid/media/audiofx/Spectrum$OnServerDiedListener;

    .line 579
    monitor-exit v1

    .line 580
    const/4 v0, 0x0

    return v0

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
