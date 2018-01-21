.class Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VivoPackageManagerSerivceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPackageManagerSerivceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoConfigReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)V
    .locals 2

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoConfigReceiver;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 665
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 666
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_filter_permission"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v1, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_sys_base_apk_list"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    # getter for: Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->access$100(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x3e8

    .line 674
    const-string v1, "VivoPKMSUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_filter_permission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoConfigReceiver;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    const-string v2, "CONFIG_UPDATE_ACTION_FILTER_PERMISSION"

    const-string v3, "filter_permission"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->refreshConfig(ILjava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    const-string v1, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_sys_base_apk_list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 679
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoConfigReceiver;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    const-string v2, "CONFIG_UPDATE_ACTION_BASE_APK"

    const-string v3, "sys_base_apk_list"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->refreshConfig(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoConfigReceiver;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    const/16 v2, 0x1388

    const-string v3, "BOOT_COMPLETED"

    const-string v4, "filter_permission"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->refreshConfig(ILjava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoConfigReceiver;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    const/16 v2, 0x1770

    const-string v3, "BOOT_COMPLETED"

    const-string v4, "sys_base_apk_list"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->refreshConfig(ILjava/lang/String;Ljava/lang/String;)V

    .line 686
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mDeviceBootComplete:Z

    goto :goto_0
.end method
