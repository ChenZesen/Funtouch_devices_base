.class Landroid/media/audiofx/Spectrum$NativeEventHandler;
.super Landroid/os/Handler;
.source "Spectrum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Spectrum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mSpectrum:Landroid/media/audiofx/Spectrum;

.field final synthetic this$0:Landroid/media/audiofx/Spectrum;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/Spectrum;Landroid/media/audiofx/Spectrum;Landroid/os/Looper;)V
    .locals 0
    .param p2, "v"    # Landroid/media/audiofx/Spectrum;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 590
    iput-object p1, p0, Landroid/media/audiofx/Spectrum$NativeEventHandler;->this$0:Landroid/media/audiofx/Spectrum;

    .line 591
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 592
    iput-object p2, p0, Landroid/media/audiofx/Spectrum$NativeEventHandler;->mSpectrum:Landroid/media/audiofx/Spectrum;

    .line 593
    return-void
.end method

.method private handleCaptureMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, "l":Landroid/media/audiofx/Spectrum$OnDataCaptureListener;
    iget-object v3, p0, Landroid/media/audiofx/Spectrum$NativeEventHandler;->this$0:Landroid/media/audiofx/Spectrum;

    # getter for: Landroid/media/audiofx/Spectrum;->mListenerLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/audiofx/Spectrum;->access$000(Landroid/media/audiofx/Spectrum;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 598
    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/Spectrum$NativeEventHandler;->mSpectrum:Landroid/media/audiofx/Spectrum;

    # getter for: Landroid/media/audiofx/Spectrum;->mCaptureListener:Landroid/media/audiofx/Spectrum$OnDataCaptureListener;
    invoke-static {v3}, Landroid/media/audiofx/Spectrum;->access$100(Landroid/media/audiofx/Spectrum;)Landroid/media/audiofx/Spectrum$OnDataCaptureListener;

    move-result-object v1

    .line 599
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    if-eqz v1, :cond_0

    .line 602
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 603
    .local v0, "data":[B
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 605
    .local v2, "samplingRate":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 613
    const-string v3, "Spectrum-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown native event in handleCaptureMessge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v0    # "data":[B
    .end local v2    # "samplingRate":I
    :cond_0
    :goto_0
    return-void

    .line 599
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 607
    .restart local v0    # "data":[B
    .restart local v2    # "samplingRate":I
    :pswitch_0
    iget-object v3, p0, Landroid/media/audiofx/Spectrum$NativeEventHandler;->mSpectrum:Landroid/media/audiofx/Spectrum;

    invoke-interface {v1, v3, v0, v2}, Landroid/media/audiofx/Spectrum$OnDataCaptureListener;->onWaveFormDataCapture(Landroid/media/audiofx/Spectrum;[BI)V

    goto :goto_0

    .line 610
    :pswitch_1
    iget-object v3, p0, Landroid/media/audiofx/Spectrum$NativeEventHandler;->mSpectrum:Landroid/media/audiofx/Spectrum;

    invoke-interface {v1, v3, v0, v2}, Landroid/media/audiofx/Spectrum$OnDataCaptureListener;->onFftDataCapture(Landroid/media/audiofx/Spectrum;[BI)V

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleServerDiedMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "l":Landroid/media/audiofx/Spectrum$OnServerDiedListener;
    iget-object v1, p0, Landroid/media/audiofx/Spectrum$NativeEventHandler;->this$0:Landroid/media/audiofx/Spectrum;

    # getter for: Landroid/media/audiofx/Spectrum;->mListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/audiofx/Spectrum;->access$000(Landroid/media/audiofx/Spectrum;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 622
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/Spectrum$NativeEventHandler;->mSpectrum:Landroid/media/audiofx/Spectrum;

    # getter for: Landroid/media/audiofx/Spectrum;->mServerDiedListener:Landroid/media/audiofx/Spectrum$OnServerDiedListener;
    invoke-static {v1}, Landroid/media/audiofx/Spectrum;->access$200(Landroid/media/audiofx/Spectrum;)Landroid/media/audiofx/Spectrum$OnServerDiedListener;

    move-result-object v0

    .line 623
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    if-eqz v0, :cond_0

    .line 626
    invoke-interface {v0}, Landroid/media/audiofx/Spectrum$OnServerDiedListener;->onServerDied()V

    .line 627
    :cond_0
    return-void

    .line 623
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 631
    iget-object v0, p0, Landroid/media/audiofx/Spectrum$NativeEventHandler;->mSpectrum:Landroid/media/audiofx/Spectrum;

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 635
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 644
    const-string v0, "Spectrum-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown native event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/media/audiofx/Spectrum$NativeEventHandler;->handleCaptureMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 641
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Spectrum$NativeEventHandler;->handleServerDiedMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
