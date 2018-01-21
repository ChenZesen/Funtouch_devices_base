.class final Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoBrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutoBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutdownRebootReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;


# direct methods
.method private constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager;
    .param p2, "x1"    # Lcom/vivo/common/autobrightness/AutoBrightnessManager$1;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 759
    if-nez p2, :cond_0

    .line 770
    :goto_0
    return-void

    .line 760
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    goto :goto_0

    .line 763
    :cond_1
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 764
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    goto :goto_0

    .line 765
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 766
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->notifyStateChanged(I)I

    goto :goto_0

    .line 768
    :cond_3
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$ShutdownRebootReceiver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

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
