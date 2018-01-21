.class Lcom/android/server/policy/VivoWMPHook$3;
.super Ljava/lang/Object;
.source "VivoWMPHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoWMPHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoWMPHook;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoWMPHook;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/policy/VivoWMPHook$3;->this$0:Lcom/android/server/policy/VivoWMPHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 135
    const-string v2, "VivoWMPHook"

    const-string v3, "volume key is long press, do something here."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/VivoWMPHook$3;->this$0:Lcom/android/server/policy/VivoWMPHook;

    iget-object v2, v2, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->performHapticFeedback(IZZ)Z

    .line 139
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v1, "oneKeyIntent":Landroid/content/Intent;
    const-string v2, "vivo.action.ACTION_THE_KEY_TO_START_FUNCTIONS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "com.vivo.SmartKey"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/android/server/policy/VivoWMPHook$3;->this$0:Lcom/android/server/policy/VivoWMPHook;

    iget-object v2, v2, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "oneKeyIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VivoWMPHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to start smartkey service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
