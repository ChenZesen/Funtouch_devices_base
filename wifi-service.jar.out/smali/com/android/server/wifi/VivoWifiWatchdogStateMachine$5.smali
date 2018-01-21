.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$5;
.super Ljava/lang/Object;
.source "VivoWifiWatchdogStateMachine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 2530
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$5;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$5;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "showSwitchMobileNetworkDialog cancel"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$20900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2534
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$5;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dialogNotShowAgain:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$21002(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    .line 2535
    return-void
.end method
