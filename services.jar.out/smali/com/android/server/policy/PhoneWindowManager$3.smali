.class Lcom/android/server/policy/PhoneWindowManager$3;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/VivoFingerStatusRecorder$FingerUnlockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideKeyguard()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideKeyguardByFingerprint(I)V

    .line 885
    return-void
.end method

.method public keyguardDone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 878
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVivoPolicy:Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->keyguardDone(ZZ)V

    .line 879
    return-void
.end method

.method public wakeUp()V
    .locals 6

    .prologue
    .line 890
    const/4 v5, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 891
    .local v4, "wakeUpMsgList":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 894
    .local v3, "msg":I
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mWakeupByWhoHandler:Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;
    invoke-static {v5}, Lcom/android/server/policy/PhoneWindowManager;->access$400(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 895
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mWakeupByWhoHandler:Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;
    invoke-static {v5}, Lcom/android/server/policy/PhoneWindowManager;->access$400(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->removeMessages(I)V

    .line 896
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mWakeupByWhoHandler:Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;
    invoke-static {v5}, Lcom/android/server/policy/PhoneWindowManager;->access$400(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/policy/PhoneWindowManager$WakeupByWhoHandler;->sendEmptyMessage(I)Z

    .line 901
    .end local v3    # "msg":I
    :cond_0
    return-void

    .line 891
    .restart local v3    # "msg":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 890
    nop

    :array_0
    .array-data 4
        0x4
        0x1
        0x2
    .end array-data
.end method
