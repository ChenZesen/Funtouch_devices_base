.class Lcom/android/server/am/firewall/VivoBringupController$AppBringControllerHandler;
.super Landroid/os/Handler;
.source "VivoBringupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/firewall/VivoBringupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppBringControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/firewall/VivoBringupController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/firewall/VivoBringupController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/am/firewall/VivoBringupController$AppBringControllerHandler;->this$0:Lcom/android/server/am/firewall/VivoBringupController;

    .line 59
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController$AppBringControllerHandler;->this$0:Lcom/android/server/am/firewall/VivoBringupController;

    # getter for: Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    invoke-static {v0}, Lcom/android/server/am/firewall/VivoBringupController;->access$000(Lcom/android/server/am/firewall/VivoBringupController;)Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->bringupIqooService(Landroid/os/Message;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
