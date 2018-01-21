.class Lcom/android/server/wifi/VivoHotSpotEnhancer$7;
.super Ljava/lang/Object;
.source "VivoHotSpotEnhancer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 725
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$7;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$7;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->isDialogClicked:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4202(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z

    .line 728
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$7;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 729
    return-void
.end method
