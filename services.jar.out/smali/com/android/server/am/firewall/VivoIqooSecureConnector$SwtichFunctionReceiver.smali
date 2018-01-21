.class Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VivoIqooSecureConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/firewall/VivoIqooSecureConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwtichFunctionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;


# direct methods
.method constructor <init>(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 83
    if-nez p2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sget-boolean v3, Lcom/android/server/am/firewall/VivoFirewall;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$000(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "firewall receive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->BROADCAST_SWITCH:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$100(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 90
    const-string v3, "persist.sys.appfilterbroadcast"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    .local v0, "fromAppfilter":Z
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$000(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromAppfilter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v0, :cond_0

    .line 95
    const-string v3, "persist.sys.appfilterbroadcast"

    const-string v4, "off"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "switchon"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 98
    .local v2, "switchOn":Z
    const-string v3, "onlyScreenOff"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 99
    .local v1, "onlyScreenOff":Z
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    const-string v4, "maxComboTimes"

    const/16 v5, 0x8

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboTimes:I
    invoke-static {v3, v4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$202(Lcom/android/server/am/firewall/VivoIqooSecureConnector;I)I

    .line 100
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    const-string v4, "maxComboDuration"

    const/16 v5, 0x3e8

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboDuration:I
    invoke-static {v3, v4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$302(Lcom/android/server/am/firewall/VivoIqooSecureConnector;I)I

    .line 101
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # setter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mOnlyScreenOff:Z
    invoke-static {v3, v1}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$402(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z

    .line 102
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    const-string v4, "allProviderType"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mAllProviderType:Z
    invoke-static {v3, v4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$502(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z

    .line 104
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$600(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_3

    .line 105
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$602(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$600(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 107
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$600(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 108
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$600(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "sysTypeList"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$700(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_5

    .line 111
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$702(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 112
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$700(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 113
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$700(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 114
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$700(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "syncForbidTypeList"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    sget-boolean v3, Lcom/android/server/am/firewall/VivoFirewall;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 117
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$000(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "firewall receive switch broadcast switchon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", onlyScreenOff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mMaxComboTimes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboTimes:I
    invoke-static {v5}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$200(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mMaxComboDuration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboDuration:I
    invoke-static {v5}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$300(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mSyncForbidTypeList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$700(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mSysTypeList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # getter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$600(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_7
    if-eqz v2, :cond_8

    .line 122
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # invokes: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->setEnable(Z)Z
    invoke-static {v3, v7}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$800(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z

    goto/16 :goto_0

    .line 124
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # invokes: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->setEnable(Z)Z
    invoke-static {v3, v6}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$800(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z

    goto/16 :goto_0

    .line 126
    .end local v0    # "fromAppfilter":Z
    .end local v1    # "onlyScreenOff":Z
    .end local v2    # "switchOn":Z
    :cond_9
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 127
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # setter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mScreenOff:Z
    invoke-static {v3, v6}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$902(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z

    goto/16 :goto_0

    .line 128
    :cond_a
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;->this$0:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    # setter for: Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mScreenOff:Z
    invoke-static {v3, v7}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->access$902(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z

    goto/16 :goto_0
.end method
