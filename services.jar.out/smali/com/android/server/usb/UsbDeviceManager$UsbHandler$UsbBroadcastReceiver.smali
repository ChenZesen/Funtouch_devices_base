.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Lcom/android/server/usb/UsbDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .param p2, "x1"    # Lcom/android/server/usb/UsbDeviceManager$1;

    .prologue
    .line 1420
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x258

    const/16 v7, 0x68

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1425
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1426
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Current click is monkey test intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1430
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1431
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.vivo.usb.notifications.intent.action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1432
    const-string v2, "UsbButtonId"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1433
    .local v1, "buttonId":I
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive clickId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentFunctions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V

    .line 1434
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1436
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    const/16 v3, 0x65

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1439
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbHelpIsVisible:Z
    invoke-static {v2, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3702(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 1440
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserClickUsbNoti:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$802(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 1441
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ptp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1444
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentFunctions is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " donot change."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1447
    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string v3, "ptp"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    .line 1448
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3802(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 1450
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v2, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 1452
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1455
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserClickUsbNoti:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$802(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 1456
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mtp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1460
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentFunctions is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " donot change."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1463
    :cond_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbHelpIsVisible:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3702(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 1464
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string v3, "mtp"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    .line 1465
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3802(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 1468
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v2, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 1470
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1474
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mISUserRestrctions:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$2700(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1475
    const-string v2, "UsbDeviceManager"

    const-string v3, "Current is User restrction mode. Dont change usb function."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3900(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    goto/16 :goto_0

    .line 1481
    :cond_4
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserClickUsbNoti:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$802(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 1482
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    const/16 v3, 0x67

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1486
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserClickUsbNoti:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$802(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 1487
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbHelpIsVisible:Z
    invoke-static {v2, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3702(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 1488
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string v3, "charging"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    .line 1489
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z
    invoke-static {v2, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3802(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 1490
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v2, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 1491
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
