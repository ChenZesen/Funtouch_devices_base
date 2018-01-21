.class Lcom/android/server/wifi/VivoBandWidthCollect$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoBandWidthCollect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoBandWidthCollect;->setupReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoBandWidthCollect;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoBandWidthCollect;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$1;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "VivoBandWidthCollect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 121
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$1;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const v4, 0x21901

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wifi/VivoBandWidthCollect;->sendMessage(ILjava/lang/Object;)V

    .line 138
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 126
    .restart local v0    # "action":Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 127
    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$102(Z)Z

    .line 128
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$1;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const v4, 0x21903

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 130
    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/VivoBandWidthCollect;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$102(Z)Z

    .line 131
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$1;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const v4, 0x21904

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->sendMessage(I)V

    goto :goto_0

    .line 132
    :cond_5
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    iget-object v3, p0, Lcom/android/server/wifi/VivoBandWidthCollect$1;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    const v4, 0x21902

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->sendMessage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
