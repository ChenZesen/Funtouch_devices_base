.class Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$3;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->keyguardDone(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

.field final synthetic val$arg0:Z

.field final synthetic val$arg1:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;ZZ)V
    .locals 0

    .prologue
    .line 9095
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$3;->this$1:Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$3;->val$arg0:Z

    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$3;->val$arg1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 9098
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$3;->this$1:Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$3;->val$arg0:Z

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$3;->val$arg1:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 9099
    return-void
.end method
