.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$7;
.super Ljava/lang/Object;
.source "VivoWifiWatchdogStateMachine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->showSwitchMobileNetworkDialog(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

.field final synthetic val$noInternetAccess:Z

.field final synthetic val$vivoPoorRssiState:Z


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;ZZ)V
    .locals 0

    .prologue
    .line 2515
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$7;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iput-boolean p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$7;->val$noInternetAccess:Z

    iput-boolean p3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$7;->val$vivoPoorRssiState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$7;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dialogNotShowAgain:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$21002(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    .line 2519
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$7;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "showSwitchMobileNetworkDialog confirm"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$21200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2520
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$7;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-boolean v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$7;->val$noInternetAccess:Z

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$7;->val$vivoPoorRssiState:Z

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->switchToMobileNetwork(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$21300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;ZZ)V

    .line 2521
    return-void
.end method
