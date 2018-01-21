.class Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$2;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;)V
    .locals 0

    .prologue
    .line 9748
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$2;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9750
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$2;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V

    .line 9751
    return-void
.end method
