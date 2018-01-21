.class Lcom/vivo/common/autobrightness/TimePeriod$1;
.super Ljava/lang/Object;
.source "TimePeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/TimePeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/TimePeriod;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/TimePeriod;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/TimePeriod;->access$300(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mReceiver:Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/TimePeriod;->access$100(Lcom/vivo/common/autobrightness/TimePeriod;)Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.auto_bright.day.start"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/TimePeriod;->access$200(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/TimePeriod;->access$300(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mReceiver:Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/TimePeriod;->access$100(Lcom/vivo/common/autobrightness/TimePeriod;)Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.auto_bright.day.end"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/TimePeriod;->access$200(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/TimePeriod;->access$300(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mReceiver:Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/TimePeriod;->access$100(Lcom/vivo/common/autobrightness/TimePeriod;)Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/TimePeriod;->access$200(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/TimePeriod;->access$300(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mReceiver:Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/TimePeriod;->access$100(Lcom/vivo/common/autobrightness/TimePeriod;)Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/TimePeriod;->access$200(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/TimePeriod;->access$300(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mReceiver:Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/TimePeriod;->access$100(Lcom/vivo/common/autobrightness/TimePeriod;)Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # getter for: Lcom/vivo/common/autobrightness/TimePeriod;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vivo/common/autobrightness/TimePeriod;->access$200(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod$1;->this$0:Lcom/vivo/common/autobrightness/TimePeriod;

    # invokes: Lcom/vivo/common/autobrightness/TimePeriod;->setupTimer()Z
    invoke-static {v0}, Lcom/vivo/common/autobrightness/TimePeriod;->access$400(Lcom/vivo/common/autobrightness/TimePeriod;)Z

    .line 84
    return-void
.end method
