.class Lcom/android/server/wifi/VivoFakeWifiState$2;
.super Ljava/lang/Thread;
.source "VivoFakeWifiState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoFakeWifiState;->readXml()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoFakeWifiState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoFakeWifiState;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/server/wifi/VivoFakeWifiState$2;->this$0:Lcom/android/server/wifi/VivoFakeWifiState;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoFakeWifiState$2;->this$0:Lcom/android/server/wifi/VivoFakeWifiState;

    const-string v1, "content://com.vivo.daemonservice.unifiedconfigprovider/configs"

    const-string v2, "WifiState"

    const-string v3, "1"

    const-string v4, "v1.0"

    const-string v5, "vivofakewifistate"

    # invokes: Lcom/android/server/wifi/VivoFakeWifiState;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/VivoFakeWifiState;->access$300(Lcom/android/server/wifi/VivoFakeWifiState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoFakeWifiState$2;->this$0:Lcom/android/server/wifi/VivoFakeWifiState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wifi/VivoFakeWifiState;->isUpdating:Z

    .line 230
    return-void

    .line 226
    :catch_0
    move-exception v6

    .line 227
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
