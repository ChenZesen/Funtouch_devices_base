.class Lcom/vivo/common/utils/ChildrenModeHelper$4;
.super Ljava/lang/Object;
.source "ChildrenModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/utils/ChildrenModeHelper;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/vivo/common/utils/ChildrenModeHelper;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    iput-object p2, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 723
    const-string v0, "com.vivo.childrenmode_action_app_start"

    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->val$intent:Landroid/content/Intent;

    const-string v2, "com.vivo.childrenmode_start"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeStart:Z
    invoke-static {v0, v1}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$702(Lcom/vivo/common/utils/ChildrenModeHelper;Z)Z

    .line 725
    const-string v0, "ChildrenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChildrenModeStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    # getter for: Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeStart:Z
    invoke-static {v2}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$700(Lcom/vivo/common/utils/ChildrenModeHelper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    const-string v0, "com.vivo.childrenmode_action_full_screen_assert"

    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->val$intent:Landroid/content/Intent;

    const-string v2, "com.vivo.childrenmode_time_out"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeTimeout:Z
    invoke-static {v0, v1}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$802(Lcom/vivo/common/utils/ChildrenModeHelper;Z)Z

    .line 728
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->val$intent:Landroid/content/Intent;

    const-string v2, "com.vivo.childrenmode_bad_posture"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeBadPosture:Z
    invoke-static {v0, v1}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$902(Lcom/vivo/common/utils/ChildrenModeHelper;Z)Z

    .line 729
    const-string v0, "ChildrenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChildrenModeTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    # getter for: Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeTimeout:Z
    invoke-static {v2}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$800(Lcom/vivo/common/utils/ChildrenModeHelper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v0, "ChildrenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChildrenModeBadPosture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper$4;->this$0:Lcom/vivo/common/utils/ChildrenModeHelper;

    # getter for: Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeBadPosture:Z
    invoke-static {v2}, Lcom/vivo/common/utils/ChildrenModeHelper;->access$900(Lcom/vivo/common/utils/ChildrenModeHelper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
