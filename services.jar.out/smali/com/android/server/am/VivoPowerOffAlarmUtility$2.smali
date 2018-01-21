.class Lcom/android/server/am/VivoPowerOffAlarmUtility$2;
.super Landroid/os/Handler;
.source "VivoPowerOffAlarmUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VivoPowerOffAlarmUtility;
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
    .line 245
    iput-object p1, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$2;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x3e9

    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 248
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$2;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/VivoPowerOffAlarmUtility;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$200(Lcom/android/server/am/VivoPowerOffAlarmUtility;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_2

    .line 252
    const-string v0, "sys.boot.reason"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "service.bootanim.exit"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "ctl.stop"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility$2;->this$0:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    # getter for: Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->access$300(Lcom/android/server/am/VivoPowerOffAlarmUtility;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_0
.end method
