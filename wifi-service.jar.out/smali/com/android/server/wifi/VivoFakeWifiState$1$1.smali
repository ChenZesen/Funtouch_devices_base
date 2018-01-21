.class Lcom/android/server/wifi/VivoFakeWifiState$1$1;
.super Ljava/lang/Object;
.source "VivoFakeWifiState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoFakeWifiState$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/VivoFakeWifiState$1;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoFakeWifiState$1;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/wifi/VivoFakeWifiState$1$1;->this$1:Lcom/android/server/wifi/VivoFakeWifiState$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/VivoFakeWifiState$1$1;->this$1:Lcom/android/server/wifi/VivoFakeWifiState$1;

    iget-object v0, v0, Lcom/android/server/wifi/VivoFakeWifiState$1;->this$0:Lcom/android/server/wifi/VivoFakeWifiState;

    # invokes: Lcom/android/server/wifi/VivoFakeWifiState;->readXml()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoFakeWifiState;->access$100(Lcom/android/server/wifi/VivoFakeWifiState;)V

    .line 73
    return-void
.end method
