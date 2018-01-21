.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbNotificationBReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Lcom/android/server/usb/UsbDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .param p2, "x1"    # Lcom/android/server/usb/UsbDeviceManager$1;

    .prologue
    .line 1774
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1778
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1779
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.vivo.usb.notifications.intent.action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1780
    const-string v3, "UsbButtonId"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1781
    .local v1, "buttonId":I
    packed-switch v1, :pswitch_data_0

    .line 1802
    .end local v1    # "buttonId":I
    :cond_0
    :goto_0
    return-void

    .line 1783
    .restart local v1    # "buttonId":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStaticUsbAdbDebugTipsNotificationId:I
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$4600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1784
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbAdbDebugTipsIsClickByUser:Z
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->access$4202(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1785
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb.adb.debug.noti.clicked"

    const-string v5, "yes"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1786
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$4700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Landroid/app/StatusBarManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1787
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string v4, "user click the usb debug tip button"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->logi(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1790
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.bbk_phoneInstructions_jump"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1791
    .local v2, "usbAdbDebugIntent":Landroid/content/Intent;
    const-string v3, "main_title"

    const-string v4, "\u8bbe\u7f6e"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1792
    const-string v3, "sub_title"

    const-string v4, "\u5f00\u53d1\u8005\u9009\u9879"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1793
    const-string v3, "app_name"

    const-string v4, "usb_debug"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1794
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string v4, "send bc to show usb_debug_manual "

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->logi(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V

    .line 1795
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1796
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$UsbNotificationBReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$4700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Landroid/app/StatusBarManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto :goto_0

    .line 1781
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
