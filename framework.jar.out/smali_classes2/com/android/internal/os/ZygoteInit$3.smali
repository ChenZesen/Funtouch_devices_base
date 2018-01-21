.class final Lcom/android/internal/os/ZygoteInit$3;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->preload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    const-string v0, "boot_opt"

    const-string v1, "preloadSharedLibraries + preloadOpenGL + prepareWebViewInZygote"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$200()V

    .line 238
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$300()V

    .line 239
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$400()V

    .line 242
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 243
    return-void
.end method
