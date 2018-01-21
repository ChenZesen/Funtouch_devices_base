.class Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;
.super Ljava/lang/Object;
.source "FingerprintWakeHookCollectData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    iput-object p2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;->val$params:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;->val$eventId:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;->val$label:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 60
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v11, "mParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "speed"

    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;->val$params:Ljava/util/HashMap;

    const-string v2, "speed"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;
    invoke-static {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->access$000(Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;)Lcom/vivo/common/VivoCollectData;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;->val$eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/common/VivoCollectData;->getControlInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;
    invoke-static {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->access$000(Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;)Lcom/vivo/common/VivoCollectData;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;->val$eventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;->val$label:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "writeData(): getControlInfo is false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
