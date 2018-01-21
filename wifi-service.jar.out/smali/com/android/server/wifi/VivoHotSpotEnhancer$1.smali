.class Lcom/android/server/wifi/VivoHotSpotEnhancer$1;
.super Landroid/database/ContentObserver;
.source "VivoHotSpotEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoHotSpotEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$1;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 218
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$1;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$1;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings.datalimitation"

    const-wide/16 v4, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$002(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J

    .line 222
    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$1;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$1;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z
    invoke-static {v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$200(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "VivoHotSpotEnhancer"

    const-string v2, "the data limitation is unvaliable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vivo.net.hotspot.LimitationUpdate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "limitorIntent":Landroid/content/Intent;
    const-string v1, "hotspot.data.limitation"

    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$1;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J
    invoke-static {v2}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$1;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # getter for: Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
