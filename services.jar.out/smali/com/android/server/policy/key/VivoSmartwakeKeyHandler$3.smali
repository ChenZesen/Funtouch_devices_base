.class Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$3;
.super Ljava/lang/Object;
.source "VivoSmartwakeKeyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V
    .locals 0

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1108
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1400(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "visit_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1111
    .local v0, "visitMode":I
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwake user event present trigger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V

    .line 1112
    if-nez v0, :cond_1

    .line 1114
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->startActivity(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1500(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Landroid/content/Intent;)V

    .line 1116
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->access$1302(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0
.end method
