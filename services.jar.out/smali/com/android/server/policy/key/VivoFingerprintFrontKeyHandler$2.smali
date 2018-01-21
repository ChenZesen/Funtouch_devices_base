.class Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$2;
.super Ljava/lang/Object;
.source "VivoFingerprintFrontKeyHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    .line 356
    iput-object p1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 367
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v2, 0x3f7

    const/4 v4, 0x0

    .line 359
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->removeFingerMessage(I)V
    invoke-static {v1, v2}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$200(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V

    .line 360
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    # getter for: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->mFingerHandler:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;
    invoke-static {v1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$300(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;)Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$FingerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 361
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 362
    iget-object v1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$2;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V
    invoke-static {v1, v4, v0, v2, v3}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$100(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;ILandroid/os/Message;J)V

    .line 363
    return-void
.end method
