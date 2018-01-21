.class final Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoBrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutoBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlashLightReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;


# direct methods
.method private constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p2, "x1"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;

    .prologue
    .line 807
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 809
    if-nez p2, :cond_0

    .line 827
    :goto_0
    return-void

    .line 810
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.vivo.flashlight.ACTION_FLASHLIGHT_STATE_CHANGD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 813
    const-string v1, "AutoBrightnessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtra(FlashlightOn)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FlashlightOn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v1, "FlashlightOn"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    const-string v1, "AutoBrightnessManager"

    const-string v2, "Flashlight on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    goto :goto_0

    .line 821
    :cond_1
    const-string v1, "AutoBrightnessManager"

    const-string v2, "Flashlight off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    goto :goto_0

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$FlashLightReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unkown action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$400(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Ljava/lang/String;)V

    goto :goto_0
.end method
