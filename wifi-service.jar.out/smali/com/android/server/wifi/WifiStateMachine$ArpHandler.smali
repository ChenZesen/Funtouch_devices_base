.class Lcom/android/server/wifi/WifiStateMachine$ArpHandler;
.super Landroid/os/Handler;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 13163
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ArpHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 13169
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 13170
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 13180
    :goto_0
    return-void

    .line 13172
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ArpHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->doArpTest()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$35800(Lcom/android/server/wifi/WifiStateMachine;)Z

    goto :goto_0

    .line 13175
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ArpHandler;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateArpTest()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$35900(Lcom/android/server/wifi/WifiStateMachine;)Z

    goto :goto_0

    .line 13170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
