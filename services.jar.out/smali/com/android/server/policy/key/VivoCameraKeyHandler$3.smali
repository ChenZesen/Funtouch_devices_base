.class Lcom/android/server/policy/key/VivoCameraKeyHandler$3;
.super Ljava/lang/Object;
.source "VivoCameraKeyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/key/VivoCameraKeyHandler;->postBrightScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$3;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoCameraKeyHandler;->acquireBrightLock()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->access$400(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V

    .line 472
    return-void
.end method
