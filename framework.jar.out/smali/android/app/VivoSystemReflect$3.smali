.class final Landroid/app/VivoSystemReflect$3;
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
    .line 390
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 393
    :try_start_0
    const-string v2, "com.vivo.services.DeviceParaProvideService"

    # invokes: Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;
    invoke-static {v2}, Landroid/app/VivoSystemReflect;->access$000(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 394
    .local v0, "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 397
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v2

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "VivoSystemReflect"

    const-string v3, "Failure register DeviceParaProvideService"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    const/4 v2, 0x0

    goto :goto_0
.end method
