.class Lcom/android/server/policy/key/VivoCameraKeyHandler$4;
.super Landroid/content/BroadcastReceiver;
.source "VivoCameraKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoCameraKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 497
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$4;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/policy/key/VivoCameraKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->access$500(Lcom/android/server/policy/key/VivoCameraKeyHandler;Ljava/lang/String;)V

    .line 499
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
