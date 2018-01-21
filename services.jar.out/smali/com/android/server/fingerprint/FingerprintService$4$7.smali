.class Lcom/android/server/fingerprint/FingerprintService$4$7;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$4;->onFingerprintstate(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$4;

.field final synthetic val$flag:I

.field final synthetic val$result:I

.field final synthetic val$result_cmd:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$4;III)V
    .locals 0

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iput p2, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$result_cmd:I

    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$result:I

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$flag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$result_cmd:I

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$result:I

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$flag:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->dispatchFingerprintstate(III)V

    .line 1010
    return-void
.end method
