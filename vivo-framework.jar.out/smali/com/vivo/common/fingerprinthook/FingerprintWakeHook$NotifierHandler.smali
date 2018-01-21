.class Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$NotifierHandler;
.super Landroid/os/Handler;
.source "FingerprintWakeHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifierHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 479
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 484
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 500
    :goto_0
    :pswitch_0
    return-void

    .line 486
    :pswitch_1
    const/4 v0, 0x1

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mBlockNotifier:Z
    invoke-static {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$202(Z)Z

    .line 487
    const-string v0, "handleMessage MSG_NOTIFIER_BLOCK"

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :pswitch_2
    const/4 v0, 0x0

    # setter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mBlockNotifier:Z
    invoke-static {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$202(Z)Z

    .line 497
    const-string v0, "handleMessage MSG_NOTIFIER_TIMEOUT"

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
