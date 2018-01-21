.class Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;
.super Landroid/os/Handler;
.source "VivoFingerprintFrontKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 883
    iput-object p1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    .line 884
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 885
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 888
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FingerHandler handleMessage: what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerToStringLog(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$1500(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 891
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerAuthenticate(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$1600(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V

    goto :goto_0

    .line 895
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerCancelAuthenticate()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$1700(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 899
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerInfraredNear()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$1800(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 903
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerInfraredfar()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$1900(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 907
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2000(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V

    goto :goto_0

    .line 911
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerFingerSuccess()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2100(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 915
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerFingerFail()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2200(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 919
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerFingerScreenOn()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2300(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 923
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerFingerScreenOff()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2400(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 927
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerKeyGuardShow()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2500(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 931
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerExitKeyGuard()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2600(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 935
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerOtherApp()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2700(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 939
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerKeyGuardHide()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2800(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 943
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v0, :cond_2

    .line 944
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v0, :cond_1

    const/16 v0, 0xe

    :goto_1
    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V
    invoke-static {v1, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2000(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xf

    goto :goto_1

    .line 945
    :cond_2
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_3

    const/16 v0, 0x11

    :goto_2
    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSendFingerprintCmd(I)V
    invoke-static {v1, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2000(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x10

    goto :goto_2

    .line 951
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerSystemReboot()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$2900(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    goto :goto_0

    .line 955
    :pswitch_f
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->handlerInfrared(F)V
    invoke-static {v1, v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$3000(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;F)V

    goto/16 :goto_0

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
