.class Lcom/android/server/policy/VivoPolicyHelper$1;
.super Ljava/lang/Object;
.source "VivoPolicyHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoPolicyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoPolicyHelper;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoPolicyHelper;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/policy/VivoPolicyHelper$1;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    const-string v0, "VivoPolicyHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vHomeClick doSomething here("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/VivoPolicyHelper$1;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    # getter for: Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapPending:Z
    invoke-static {v2}, Lcom/android/server/policy/VivoPolicyHelper;->access$000(Lcom/android/server/policy/VivoPolicyHelper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper$1;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    # getter for: Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapPending:Z
    invoke-static {v0}, Lcom/android/server/policy/VivoPolicyHelper;->access$000(Lcom/android/server/policy/VivoPolicyHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper$1;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/VivoPolicyHelper;->mHomeDoubleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoPolicyHelper;->access$002(Lcom/android/server/policy/VivoPolicyHelper;Z)Z

    .line 137
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper$1;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/policy/VivoPolicyHelper;->handleShortPressOnHome(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoPolicyHelper;->access$100(Lcom/android/server/policy/VivoPolicyHelper;I)V

    .line 139
    :cond_0
    return-void
.end method
