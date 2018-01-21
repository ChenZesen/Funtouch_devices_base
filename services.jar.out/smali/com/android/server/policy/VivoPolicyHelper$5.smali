.class Lcom/android/server/policy/VivoPolicyHelper$5;
.super Ljava/lang/Object;
.source "VivoPolicyHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/VivoPolicyHelper;->reportFingerPrint()V
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
    .line 329
    iput-object p1, p0, Lcom/android/server/policy/VivoPolicyHelper$5;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "VivoPolicyHelper"

    const-string v1, "reportFingerPrint reset to false.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyHelper$5;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/VivoPolicyHelper;->mFingerPrint:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoPolicyHelper;->access$702(Lcom/android/server/policy/VivoPolicyHelper;Z)Z

    .line 334
    return-void
.end method
