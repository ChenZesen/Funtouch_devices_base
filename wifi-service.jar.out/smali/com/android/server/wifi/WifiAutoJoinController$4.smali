.class Lcom/android/server/wifi/WifiAutoJoinController$4;
.super Ljava/lang/Object;
.source "WifiAutoJoinController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiAutoJoinController;->showSwitchNetworkDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiAutoJoinController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiAutoJoinController;)V
    .locals 0

    .prologue
    .line 2964
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoJoinController$4;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController$4;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiAutoJoinController;->dialogNotShowAgain:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->access$902(Lcom/android/server/wifi/WifiAutoJoinController;Z)Z

    .line 2968
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wifi/VivoSmartWifiConstants;->tempDisableSmartWifi(Z)V

    .line 2969
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController$4;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSwitchNetworkDialog confirm, mDialogType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController$4;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mDialogType:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiAutoJoinController;->access$1000(Lcom/android/server/wifi/WifiAutoJoinController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2979
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController$4;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    # getter for: Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiAutoJoinController;->access$000(Lcom/android/server/wifi/WifiAutoJoinController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->forceScan()V

    .line 2981
    return-void
.end method
