.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$5;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->showUsbVivoEmAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0

    .prologue
    .line 1943
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$5;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$5;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3802(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 1948
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$5;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const-string v1, "mtp"

    const/4 v2, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$4800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Ljava/lang/String;Z)V

    .line 1949
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$5;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3900(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 1950
    return-void
.end method
