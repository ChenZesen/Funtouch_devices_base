.class Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;
.super Ljava/lang/Object;
.source "ColorManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceDead"
.end annotation


# static fields
.field public static mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 324
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "color service is dead"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "serviceBound":Z
    :goto_0
    if-nez v1, :cond_0

    .line 328
    const/4 v3, 0x1

    :try_start_0
    # setter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z
    invoke-static {v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$202(Z)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :try_start_1
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceContext:Landroid/content/Context;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$400()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$300()Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    :goto_1
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 338
    .local v2, "serviceIntent":Landroid/content/Intent;
    const-string v3, "com.qti.service.colorservice"

    const-string v4, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceContext:Landroid/content/Context;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$400()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$300()Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 341
    if-nez v1, :cond_1

    .line 342
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to connect to remote service"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v3, 0x0

    # setter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z
    invoke-static {v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$202(Z)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 348
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/SecurityException;
    # setter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z
    invoke-static {v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$202(Z)Z

    .line 350
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 352
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    return-void

    .line 333
    :catch_1
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "service restarted success"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
