.class final Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoBrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutoBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SuperPowerSavingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;


# direct methods
.method private constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p2, "x1"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 775
    if-nez p2, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "action":Ljava/lang/String;
    const-string v1, "intent.action.super_power_save"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 778
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    const-string v1, "AutoBrightnessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtra(sps_action)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sps_action"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_2
    const-string v1, "sps_action"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 781
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 782
    const-string v1, "AutoBrightnessManager"

    const-string v2, "switchOnSuperPowerSaving(true)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_3
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-virtual {v1, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    goto :goto_0

    .line 788
    :cond_4
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 789
    const-string v1, "AutoBrightnessManager"

    const-string v2, "switchOnSuperPowerSaving(false)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_5
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    goto :goto_0

    .line 795
    :cond_6
    const-string v1, "intent.action.super_power_save_send"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    const-string v1, "sps_action"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "entered"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 797
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const-string v2, "switchOnSuperPowerSaving(true)"

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-virtual {v1, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    goto/16 :goto_0

    .line 800
    :cond_7
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const-string v2, "switchOnSuperPowerSaving(false)"

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    .line 801
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$SuperPowerSavingReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    goto/16 :goto_0
.end method
