.class final Landroid/app/VivoSystemReflect$2;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "VivoSystemReflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/VivoSystemReflect;->registerMangerService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 378
    :try_start_0
    const-string v2, "com.vivo.services.motion.MotionRecognitionManager"

    # invokes: Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;
    invoke-static {v2}, Landroid/app/VivoSystemReflect;->access$000(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 380
    .local v0, "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 383
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v2

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "VivoSystemReflect"

    const-string v3, "Failure register MotionRecognitionManager"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    const/4 v2, 0x0

    goto :goto_0
.end method
