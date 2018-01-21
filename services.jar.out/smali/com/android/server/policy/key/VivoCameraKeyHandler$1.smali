.class Lcom/android/server/policy/key/VivoCameraKeyHandler$1;
.super Ljava/lang/Object;
.source "VivoCameraKeyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/key/VivoCameraKeyHandler;->postDismissSplashView()V
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
    .line 367
    iput-object p1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    # invokes: Lcom/android/server/policy/key/VivoCameraKeyHandler;->dismissSplashView()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;->access$100(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V

    .line 372
    return-void
.end method
