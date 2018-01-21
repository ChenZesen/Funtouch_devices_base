.class Lcom/android/server/am/VivoPowerOffAlarmUtility$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoPowerOffAlarmUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/VivoPowerOffAlarmUtility;->registerNormalBootReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;


# direct methods
.method constructor <init>(Lcom/android/server/am/VivoPowerOffAlarmUtility;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 124
    if-nez p2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.normal.boot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    const-string v2, "PowerOffAlarm"

    const-string v3, "DeskClock normally boots-up device"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/VivoPowerOffAlarmUtility;->mRollback:Z
    invoke-static {v2}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$000(Lcom/android/server/am/VivoPowerOffAlarmUtility;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    # invokes: Lcom/android/server/am/VivoPowerOffAlarmUtility;->checkFlightMode(ZZ)V
    invoke-static {v2, v4, v4}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$100(Lcom/android/server/am/VivoPowerOffAlarmUtility;ZZ)V

    .line 133
    :cond_2
    const-string v2, "poweroff"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 134
    .local v1, "isPoweroffAlarm":Z
    if-eqz v1, :cond_3

    .line 135
    iget-object v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/VivoPowerOffAlarmUtility;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$200(Lcom/android/server/am/VivoPowerOffAlarmUtility;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 137
    :cond_3
    const-string v2, "sys.boot.reason"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v1    # "isPoweroffAlarm":Z
    :cond_4
    const-string v2, "android.intent.action.normal.shutdown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 140
    const-string v2, "PowerOffAlarm"

    const-string v3, "DeskClock normally shutdowns device"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    iget-object v3, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$300(Lcom/android/server/am/VivoPowerOffAlarmUtility;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/server/am/VivoPowerOffAlarmUtility;->createIPOWin(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$400(Lcom/android/server/am/VivoPowerOffAlarmUtility;Landroid/content/Context;)V

    .line 142
    iget-object v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/VivoPowerOffAlarmUtility;->mRollback:Z
    invoke-static {v2}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$000(Lcom/android/server/am/VivoPowerOffAlarmUtility;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    iget-object v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/am/VivoPowerOffAlarmUtility;->checkFlightMode(ZZ)V
    invoke-static {v2, v4, v3}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$100(Lcom/android/server/am/VivoPowerOffAlarmUtility;ZZ)V

    .line 145
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/VivoPowerOffAlarmUtility;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$200(Lcom/android/server/am/VivoPowerOffAlarmUtility;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 146
    :cond_6
    const-string v2, "alarm.boot.remove.ipowin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    iget-object v3, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$300(Lcom/android/server/am/VivoPowerOffAlarmUtility;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/server/am/VivoPowerOffAlarmUtility;->removeIPOWin(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$500(Lcom/android/server/am/VivoPowerOffAlarmUtility;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
