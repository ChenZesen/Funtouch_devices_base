.class Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimePeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/TimePeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoBrightBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/TimePeriod;


# direct methods
.method private constructor <init>(Lcom/vivo/common/autobrightness/TimePeriod;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/common/autobrightness/TimePeriod;Lcom/vivo/common/autobrightness/TimePeriod$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/common/autobrightness/TimePeriod;
    .param p2, "x1"    # Lcom/vivo/common/autobrightness/TimePeriod$1;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;-><init>(Lcom/vivo/common/autobrightness/TimePeriod;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/TimePeriod;->access$500(Lcom/vivo/common/autobrightness/TimePeriod;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 134
    if-nez p2, :cond_0

    .line 135
    :try_start_0
    monitor-exit v2

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # invokes: Lcom/vivo/common/autobrightness/TimePeriod;->acquireWakeLock()V
    invoke-static {v1}, Lcom/vivo/common/autobrightness/TimePeriod;->access$600(Lcom/vivo/common/autobrightness/TimePeriod;)V

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , call calcNowPeriodType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/vivo/common/autobrightness/TimePeriod;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/vivo/common/autobrightness/TimePeriod;->access$700(Lcom/vivo/common/autobrightness/TimePeriod;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # invokes: Lcom/vivo/common/autobrightness/TimePeriod;->calcNowPeriodType()Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/TimePeriod;->access$800(Lcom/vivo/common/autobrightness/TimePeriod;)Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    .line 141
    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # invokes: Lcom/vivo/common/autobrightness/TimePeriod;->setupTimer()Z
    invoke-static {v1}, Lcom/vivo/common/autobrightness/TimePeriod;->access$400(Lcom/vivo/common/autobrightness/TimePeriod;)Z

    .line 142
    monitor-exit v2

    goto :goto_0

    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
