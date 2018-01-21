.class Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;
.super Lcom/android/internal/util/State;
.source "VivoBandWidthCollect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoBandWidthCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoTempDisabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoBandWidthCollect;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoBandWidthCollect;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 347
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$2900(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 358
    # getter for: Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;->this$0:Lcom/android/server/wifi/VivoBandWidthCollect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->access$3000(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V

    .line 359
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method
