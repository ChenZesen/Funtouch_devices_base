.class Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer$1;
.super Ljava/lang/Object;
.source "VivoWifiArpDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->waitForArpReply(I)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

.field final synthetic val$timeoutMillis:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;I)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer$1;->this$1:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    iput p2, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer$1;->val$timeoutMillis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 289
    :try_start_0
    iget v1, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer$1;->val$timeoutMillis:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer$1;->this$1:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    invoke-virtual {v1}, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->close()V

    .line 294
    const-string v1, "ArpPeer"

    const-string v2, "waitForArpReply timeout and close socket."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
