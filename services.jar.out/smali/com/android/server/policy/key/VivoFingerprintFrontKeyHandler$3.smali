.class Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "VivoFingerprintFrontKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 392
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerprintReceiver Receiver action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isKeyguardShowing()Z
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$600(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    const/16 v1, 0x3f3

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$100(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;ILandroid/os/Message;J)V

    .line 398
    :cond_0
    return-void
.end method
