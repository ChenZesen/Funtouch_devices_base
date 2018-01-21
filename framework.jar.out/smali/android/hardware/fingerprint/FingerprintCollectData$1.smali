.class Landroid/hardware/fingerprint/FingerprintCollectData$1;
.super Ljava/lang/Object;
.source "FingerprintCollectData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintCollectData;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintCollectData;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->this$0:Landroid/hardware/fingerprint/FingerprintCollectData;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$eventId:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$params:Ljava/util/HashMap;

    iput-object p4, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$label:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v3, -0x1

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 80
    .local v4, "down":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 81
    .local v6, "up":J
    const-string v0, "fingerprintCollect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFrontFingerprint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->this$0:Landroid/hardware/fingerprint/FingerprintCollectData;

    # getter for: Landroid/hardware/fingerprint/FingerprintCollectData;->isFrontFingerprint:Z
    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintCollectData;->access$000(Landroid/hardware/fingerprint/FingerprintCollectData;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->this$0:Landroid/hardware/fingerprint/FingerprintCollectData;

    # getter for: Landroid/hardware/fingerprint/FingerprintCollectData;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintCollectData;->access$100(Landroid/hardware/fingerprint/FingerprintCollectData;)Lcom/vivo/common/VivoCollectData;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/common/VivoCollectData;->getControlInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v11, "mParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "identify"

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$params:Ljava/util/HashMap;

    const-string v2, "identify"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "fp_type"

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->this$0:Landroid/hardware/fingerprint/FingerprintCollectData;

    # invokes: Landroid/hardware/fingerprint/FingerprintCollectData;->getFpType()Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintCollectData;->access$200(Landroid/hardware/fingerprint/FingerprintCollectData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "10736"

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$params:Ljava/util/HashMap;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 90
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v1, "up"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 91
    const-string v0, "fingerprintCollect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "down: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    const-string/jumbo v0, "verify_index"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.fp.verify.index"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v0, "verify_score"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.fp.verify.score"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "image_coverage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.fp.image.coverage"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "image_quality"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.fp.image.quality"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->this$0:Landroid/hardware/fingerprint/FingerprintCollectData;

    # getter for: Landroid/hardware/fingerprint/FingerprintCollectData;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintCollectData;->access$100(Landroid/hardware/fingerprint/FingerprintCollectData;)Lcom/vivo/common/VivoCollectData;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$eventId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$label:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 108
    .end local v11    # "mParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 92
    .restart local v11    # "mParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->this$0:Landroid/hardware/fingerprint/FingerprintCollectData;

    # getter for: Landroid/hardware/fingerprint/FingerprintCollectData;->isFrontFingerprint:Z
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintCollectData;->access$000(Landroid/hardware/fingerprint/FingerprintCollectData;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "10731"

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const-string/jumbo v0, "unlock_mode"

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v2, "unlock_mode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v0, "screen_state"

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v2, "screen_state"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v0, "press_touch_unlock"

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v2, "press_touch_unlock"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 96
    :cond_2
    const-string v0, "10735"

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "package_name"

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCollectData$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 106
    .end local v11    # "mParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v0, "fingerprintCollect"

    const-string/jumbo v1, "writeData: getControlInfo is false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
