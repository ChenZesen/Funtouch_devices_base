.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$2;
.super Landroid/database/ContentObserver;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->registerForWatchdogToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v1, 0x21001

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(I)V

    .line 560
    return-void
.end method