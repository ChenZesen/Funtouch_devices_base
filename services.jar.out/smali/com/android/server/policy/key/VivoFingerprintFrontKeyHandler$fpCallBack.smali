.class Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$fpCallBack;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "VivoFingerprintFrontKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "fpCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$fpCallBack;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p2, "x1"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$fpCallBack;-><init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 373
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationError errMsgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isOpenCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$fpCallBack;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->isOpenCamera:Z
    invoke-static {v2}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$400(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 6

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$fpCallBack;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifyPhoneWindowFail()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$500(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    .line 378
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$fpCallBack;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    const/16 v1, 0x3ee

    const/4 v2, 0x0

    const-wide/16 v4, 0xa

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$100(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;ILandroid/os/Message;J)V

    .line 379
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 383
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 6
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$fpCallBack;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    const/16 v1, 0x3ed

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$100(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;ILandroid/os/Message;J)V

    .line 387
    return-void
.end method
