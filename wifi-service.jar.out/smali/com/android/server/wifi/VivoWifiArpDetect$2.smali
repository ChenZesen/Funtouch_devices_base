.class Lcom/android/server/wifi/VivoWifiArpDetect$2;
.super Ljava/lang/Thread;
.source "VivoWifiArpDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiArpDetect;->startCheckArp(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiArpDetect;

.field final synthetic val$netID:I

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiArpDetect;II)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiArpDetect$2;->this$0:Lcom/android/server/wifi/VivoWifiArpDetect;

    iput p2, p0, Lcom/android/server/wifi/VivoWifiArpDetect$2;->val$netID:I

    iput p3, p0, Lcom/android/server/wifi/VivoWifiArpDetect$2;->val$token:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiArpDetect$2;->this$0:Lcom/android/server/wifi/VivoWifiArpDetect;

    const/16 v3, 0x1388

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/VivoWifiArpDetect;->doArp(II)Z

    move-result v1

    .line 126
    .local v1, "result":Z
    const-string v2, "VivoWifiArpDetect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCheckArp end netID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/VivoWifiArpDetect$2;->val$netID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/VivoWifiArpDetect$2;->val$token:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.WIFI_ARP_DETECT_FINISHED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    const-string v2, "networkId"

    iget v3, p0, Lcom/android/server/wifi/VivoWifiArpDetect$2;->val$netID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v2, "token"

    iget v3, p0, Lcom/android/server/wifi/VivoWifiArpDetect$2;->val$token:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiArpDetect$2;->this$0:Lcom/android/server/wifi/VivoWifiArpDetect;

    # getter for: Lcom/android/server/wifi/VivoWifiArpDetect;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiArpDetect;->access$100(Lcom/android/server/wifi/VivoWifiArpDetect;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 133
    return-void
.end method
