.class Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;
.super Landroid/os/Handler;
.source "PhoneWindowNotifyFinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/PhoneWindowNotifyFinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/PhoneWindowNotifyFinger;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/key/PhoneWindowNotifyFinger;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;->this$0:Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    .line 111
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    const-string v0, "PhoneWindowNotifyFinger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyEventHandler msg.what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;->this$0:Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->isSetRoot:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->access$002(Lcom/android/server/policy/key/PhoneWindowNotifyFinger;Z)Z

    .line 119
    const-string v0, "persist.vivo.finger.reboot"

    iget-object v1, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;->this$0:Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    # getter for: Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->key_long_press:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->access$100(Lcom/android/server/policy/key/PhoneWindowNotifyFinger;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;->this$0:Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    invoke-virtual {v0}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->clearRebootProp()V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
