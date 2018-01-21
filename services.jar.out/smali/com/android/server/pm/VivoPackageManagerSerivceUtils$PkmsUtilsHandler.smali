.class Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;
.super Landroid/os/Handler;
.source "VivoPackageManagerSerivceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPackageManagerSerivceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PkmsUtilsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    .line 484
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 485
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 489
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 490
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    # getter for: Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG:Z
    invoke-static {v1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->access$000(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    const-string v1, "VivoPKMSUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 517
    :goto_0
    :pswitch_0
    return-void

    .line 496
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    const-string v2, "filter_permission"

    invoke-virtual {v1, v2}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->buildConfigFromLocal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 502
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    const-string v2, "sys_base_apk_list"

    invoke-virtual {v1, v2}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->buildConfigFromLocal(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 498
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 511
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    const/16 v2, 0x3e8

    const-string v3, "LOCAL FILE NOT EXIST"

    const-string v4, "filter_permission"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->refreshConfig(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
