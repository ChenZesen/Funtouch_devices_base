.class Lcom/android/server/policy/VivoPolicyHelper$4;
.super Ljava/lang/Object;
.source "VivoPolicyHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/VivoPolicyHelper;->handleDoubleTapOnHome()V
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
    .line 273
    iput-object p1, p0, Lcom/android/server/policy/VivoPolicyHelper$4;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper$4;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    # getter for: Lcom/android/server/policy/VivoPolicyHelper;->mPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;
    invoke-static {v0}, Lcom/android/server/policy/VivoPolicyHelper;->access$500(Lcom/android/server/policy/VivoPolicyHelper;)Lcom/android/server/policy/IVivoAdjustmentPolicy;

    move-result-object v0

    invoke-interface {v0, v3, v1, v1}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->performHapticFeedback(IZZ)Z

    .line 277
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper$4;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    # getter for: Lcom/android/server/policy/VivoPolicyHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/VivoPolicyHelper;->access$400(Lcom/android/server/policy/VivoPolicyHelper;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DoubleClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/VivoPolicyHelper$4;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    # operator++ for: Lcom/android/server/policy/VivoPolicyHelper;->sCount:I
    invoke-static {v2}, Lcom/android/server/policy/VivoPolicyHelper;->access$608(Lcom/android/server/policy/VivoPolicyHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    return-void
.end method
