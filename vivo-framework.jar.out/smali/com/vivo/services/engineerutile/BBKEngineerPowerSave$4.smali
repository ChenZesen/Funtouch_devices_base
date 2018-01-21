.class Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;
.super Landroid/content/BroadcastReceiver;
.source "BBKEngineerPowerSave.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;


# direct methods
.method constructor <init>(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x5

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "act":Ljava/lang/String;
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 134
    :try_start_0
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 135
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 136
    .local v3, "state":I
    if-ne v3, v10, :cond_0

    .line 137
    const-string v7, "BBKEngineerUtileService"

    const-string v8, "SIM_STATE_READY"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v7, "persist.sys.user.action"

    const-string v8, "sim_ready"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->unRegisterNetworkEvent()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$700(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 140
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->cancelAlarmManager()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$800(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v3    # "state":I
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 146
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 147
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 148
    const-string v7, "BBKEngineerUtileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "info.getState():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v7, "persist.sys.user.action"

    const-string v8, "network_connected"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->unRegisterNetworkEvent()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$700(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 151
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->cancelAlarmManager()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$800(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    goto :goto_0

    .line 153
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 154
    :cond_3
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->cancelAlarmManager()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$800(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 155
    const-string v7, "persist.sys.user.action"

    const-string v8, "no"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "user":Ljava/lang/String;
    const-string v7, "no"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 157
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->unRegisterNetworkEvent()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$700(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    goto :goto_0

    .line 159
    :cond_4
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->setAlarmManager()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$200(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    goto :goto_0

    .line 161
    .end local v6    # "user":Ljava/lang/String;
    :cond_5
    const-string v7, "android.intent.action.ALARM_SAVE_POWER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 162
    const-string v7, "BBKEngineerUtileService"

    const-string v8, "AlarmReceiver"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->needStart()Z
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$000(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 164
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->showShutdownDailog()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$900(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    goto/16 :goto_0

    .line 166
    :cond_6
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->unRegisterNetworkEvent()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$700(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 167
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->cancelAlarmManager()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$800(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    goto/16 :goto_0

    .line 169
    :cond_7
    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 170
    const-string v7, "BBKEngineerUtileService"

    const-string v8, "Intent.ACTION_TIME_CHANGED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->isSystemReady()Z
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$1000(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->isUserChageTime()Z
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$1100(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 172
    const-string v7, "persist.sys.user.action"

    const-string v8, "time_changed"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->unRegisterNetworkEvent()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$700(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 174
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->cancelAlarmManager()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$800(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    goto/16 :goto_0

    .line 176
    :cond_8
    const-string v7, "BBKEngineerUtileService"

    const-string v8, "system selfChange!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_9
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 179
    const-string v7, "status"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 180
    .local v4, "status":I
    const-string v7, "BBKEngineerUtileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "battery_status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v7, 0x2

    if-ne v4, v7, :cond_a

    .line 182
    const-string v7, "persist.sys.user.action"

    const-string v8, "usb_connect"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->unRegisterNetworkEvent()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$700(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 184
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->cancelAlarmManager()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$800(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    goto/16 :goto_0

    .line 185
    :cond_a
    if-ne v4, v10, :cond_0

    .line 186
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->cancelAlarmManager()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$800(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    .line 187
    iget-object v7, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    # invokes: Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->setAlarmManager()V
    invoke-static {v7}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->access$200(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    goto/16 :goto_0
.end method
