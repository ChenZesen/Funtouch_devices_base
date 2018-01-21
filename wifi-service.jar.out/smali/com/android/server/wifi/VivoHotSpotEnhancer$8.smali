.class Lcom/android/server/wifi/VivoHotSpotEnhancer$8;
.super Ljava/lang/Object;
.source "VivoHotSpotEnhancer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoHotSpotEnhancer;->showAlertDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$8;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$8;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isDialogClicked:Z
    invoke-static {v0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4200(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$8;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0
.end method
