.class Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;
.super Landroid/hardware/fingerprint/FingerprintManager$FingerprintStateCallback;
.source "VivoFingerprintFrontKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintStateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .param p2, "x1"    # Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;-><init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)V

    return-void
.end method


# virtual methods
.method public onFingerprintState(III)V
    .locals 5
    .param p1, "resultCmd"    # I
    .param p2, "result"    # I
    .param p3, "parameter"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 677
    const-string v0, "frontfingerprintkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FingerprintState result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    packed-switch p2, :pswitch_data_0

    .line 699
    :goto_0
    return-void

    .line 680
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # setter for: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHasFingerSensorTouched:Z
    invoke-static {v0, v4}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$1002(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Z)Z

    .line 681
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # setter for: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mScreenOffFailVerify:Z
    invoke-static {v0, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$1102(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Z)Z

    .line 682
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # setter for: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHomePressedScreenOff:Z
    invoke-static {v0, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$1202(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Z)Z

    .line 683
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifyFingerEvents(IIZ)Z
    invoke-static {v0, v4, v4, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$1300(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;IIZ)Z

    goto :goto_0

    .line 687
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifyFingerEvents(IIZ)Z
    invoke-static {v0, v4, v1, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$1300(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;IIZ)Z

    goto :goto_0

    .line 692
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerprintState;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # setter for: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mHasFingerSensorTouched:Z
    invoke-static {v0, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$1002(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Z)Z

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
