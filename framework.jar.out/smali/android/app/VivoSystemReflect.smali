.class public Landroid/app/VivoSystemReflect;
.super Ljava/lang/Object;
.source "VivoSystemReflect.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final MSENSE_MANAGER_CLASS:Ljava/lang/String; = "com.vivo.msense.MotionRecognitionManager"

.field private static PLATFORM_INFO:Ljava/lang/String; = null

.field private static PRODUCT_INFO:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VivoSystemReflect"


# instance fields
.field private invokeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private invokeInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Landroid/app/VivoSystemReflect;->PLATFORM_INFO:Ljava/lang/String;

    .line 33
    sput-object v0, Landroid/app/VivoSystemReflect;->PRODUCT_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Landroid/app/VivoSystemReflect;->invokeClass:Ljava/lang/Class;

    .line 31
    iput-object v0, p0, Landroid/app/VivoSystemReflect;->invokeInstance:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p0}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static addBinderService(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiHandler"    # Landroid/os/Handler;

    .prologue
    .line 148
    const-string v5, "VivoSystemReflect"

    const-string v6, "VivoSystemReflect.addBinderService begin"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Landroid/app/VivoSystemReflect;->init()V

    .line 150
    sget-object v5, Lcom/vivo/content/VivoConstants;->MTK_PLATFORM:Ljava/lang/String;

    sget-object v6, Landroid/app/VivoSystemReflect;->PLATFORM_INFO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 158
    :try_start_0
    const-string v5, "VivoSystemReflect"

    const-string v6, "VivoMainService Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v5, "com.vivo.services.vivomain.VivoMainService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 161
    .local v0, "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 162
    .local v4, "service":Landroid/os/IBinder;
    const-string/jumbo v5, "vivo_main_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 165
    const-string/jumbo v5, "persist.sys.usb.config"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "readCofig":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 168
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v5, "adb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    const-string v5, "adb_enabled"

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "readCofig":Ljava/lang/String;
    .end local v4    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    :try_start_1
    const-string v5, "VivoSystemReflect"

    const-string v6, "TouchScreenDclickService Service starting"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v5, "com.vivo.services.touchscreen.BBKTouchScreenService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 179
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 180
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string v5, "bbk_touch_screen_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 182
    const-string v5, "VivoSystemReflect"

    const-string v6, "TouchScreenDclickService Service started"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :goto_1
    :try_start_2
    const-string v5, "VivoSystemReflect"

    const-string v6, "BBKEngineerUtileService Service starting"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v5, "com.vivo.services.engineerutile.BBKEngineerUtileService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 190
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 191
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string v5, "engineer_utile"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 193
    const-string v5, "VivoSystemReflect"

    const-string v6, "BBKEngineerUtileService Service started"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :goto_2
    :try_start_3
    const-string v5, "VivoSystemReflect"

    const-string v6, "VivoProxCaliService Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v5, "com.vivo.services.proxcali.VivoProxCaliService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 203
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 204
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string/jumbo v5, "vivo_prox_cali_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 211
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :goto_3
    :try_start_4
    const-string v5, "VivoSystemReflect"

    const-string v6, "HALL_STATE_SERVICE Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v5, "com.vivo.services.hallstate.HallManagerService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 213
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 214
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string v5, "hall_state_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 289
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :cond_1
    :goto_4
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->needVPM()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 291
    :try_start_5
    const-string v5, "VivoSystemReflect"

    const-string v6, "com.vivo.services.security.server.VivoPermissionService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v5, "com.vivo.services.security.server.VivoPermissionService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 293
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 294
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string/jumbo v5, "vivo_permission_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a

    .line 303
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :cond_2
    :goto_5
    :try_start_6
    const-string v5, "VivoSystemReflect"

    const-string v6, "MotionManagerService Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v5, "com.vivo.services.motion.MotionManagerService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 305
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 306
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string/jumbo v5, "motion_manager"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b

    .line 312
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :goto_6
    const-string v5, "PD1405A"

    sget-object v6, Landroid/app/VivoSystemReflect;->PRODUCT_INFO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    :try_start_7
    const-string v5, "VivoSystemReflect"

    const-string v6, "--VivoFingerprintService Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v5, "com.vivo.services.fingerprint.server.VivoFingerprintService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 316
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 317
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string/jumbo v5, "vivo_fp_app_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c

    .line 324
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :cond_3
    :goto_7
    const-string v5, "PD1405A"

    sget-object v6, Landroid/app/VivoSystemReflect;->PRODUCT_INFO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 326
    :try_start_8
    const-string v5, "VivoSystemReflect"

    const-string v6, "--FpService Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v5, "com.vivo.services.fingerprint.client.FpService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 328
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 329
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string/jumbo v5, "vivo_fp_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_d

    .line 337
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :cond_4
    :goto_8
    :try_start_9
    const-string v5, "VivoSystemReflect"

    const-string v6, "Vivo Perf Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v5, "com.vivo.services.perfservice.VivoPerfService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 339
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 340
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string/jumbo v5, "vivo_perf_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_e

    .line 347
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :goto_9
    :try_start_a
    const-string v5, "VivoSystemReflect"

    const-string v6, "SarPowerStateService Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v5, "com.vivo.services.sarpower.SarPowerStateService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 349
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 350
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string/jumbo v5, "sar_power_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_f

    .line 355
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :goto_a
    const-string v5, "VivoSystemReflect"

    const-string v6, "VivoSystemReflect.addBinderService end"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting VivoMainService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 183
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 184
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting TouchScreenDclickService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 194
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    .line 195
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting BBKEngineerUtileService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 206
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v2

    .line 207
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting VivoProxCaliService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 216
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v2

    .line 217
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting HALL_STATE_SERVICE"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 221
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_5
    sget-object v5, Lcom/vivo/content/VivoConstants;->QCOM_PLATFORM:Ljava/lang/String;

    sget-object v6, Landroid/app/VivoSystemReflect;->PLATFORM_INFO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    const-string v5, "TD1301"

    sget-object v6, Landroid/app/VivoSystemReflect;->PRODUCT_INFO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 245
    :goto_b
    :try_start_b
    const-string v5, "VivoSystemReflect"

    const-string v6, "HALL_STATE_SERVICE Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v5, "com.vivo.services.hallstate.HallManagerService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 247
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 248
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string v5, "hall_state_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    .line 255
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :goto_c
    :try_start_c
    const-string v5, "VivoSystemReflect"

    const-string v6, "TouchScreenDclickService Service starting"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v5, "com.vivo.services.touchscreen.BBKTouchScreenService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 257
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 258
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string v5, "bbk_touch_screen_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 260
    const-string v5, "VivoSystemReflect"

    const-string v6, "TouchScreenDclickService Service started"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    .line 265
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :goto_d
    :try_start_d
    const-string v5, "VivoSystemReflect"

    const-string v6, "BBKEngineerUtileService Service starting"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v5, "com.vivo.services.engineerutile.BBKEngineerUtileService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 267
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 268
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string v5, "engineer_utile"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 270
    const-string v5, "VivoSystemReflect"

    const-string v6, "BBKEngineerUtileService Service started"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    .line 278
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :goto_e
    :try_start_e
    const-string v5, "VivoSystemReflect"

    const-string v6, "SensorLogService Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v5, "com.vivo.services.sensorlog.SensorLogService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 280
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 281
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string/jumbo v5, "sensor_log"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_4

    .line 282
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :catch_5
    move-exception v2

    .line 283
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting SensorLogService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 234
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_6
    :try_start_f
    const-string v5, "VivoSystemReflect"

    const-string v6, "VivoProxCaliService Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v5, "com.vivo.services.proxcali.VivoProxCaliService"

    invoke-static {v5}, Landroid/app/VivoSystemReflect;->getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 236
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 237
    .restart local v4    # "service":Landroid/os/IBinder;
    const-string/jumbo v5, "vivo_prox_cali_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_b

    .line 239
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "service":Landroid/os/IBinder;
    :catch_6
    move-exception v2

    .line 240
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting VivoProxCaliService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 250
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v2

    .line 251
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting HALL_STATE_SERVICE"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 261
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v2

    .line 262
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting TouchScreenDclickService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 271
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v2

    .line 272
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting BBKEngineerUtileService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 295
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v2

    .line 296
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting VivoPermissionService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 307
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v2

    .line 308
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting MotionManagerService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 318
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v2

    .line 319
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting VivoFingerprintService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 330
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v2

    .line 331
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting FpService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 341
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v2

    .line 342
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting VivoPerfService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 351
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v2

    .line 352
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "Failure starting SarPowerStateService"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a
.end method

.method public static getDialogInterpolator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Interpolator;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 448
    const/4 v4, 0x0

    .line 449
    .local v4, "result":Landroid/view/animation/Interpolator;
    const/4 v3, 0x0

    .line 451
    .local v3, "interClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "com.vivo.common.animation.CustomBounceInterpolator"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 452
    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 453
    .local v1, "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/view/animation/Interpolator;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v1    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v4

    .line 454
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Ljava/lang/Throwable;
    const-string v5, "VivoSystemReflect"

    const-string v6, "get the CustomBounceInterpolator instance failed!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getServiceConstructor(Ljava/lang/String;)[Ljava/lang/reflect/Constructor;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 434
    const/4 v1, 0x0

    .line 435
    .local v1, "mangerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 437
    .local v0, "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    return-object v0
.end method

.method private static init()V
    .locals 3

    .prologue
    .line 440
    sget-object v0, Lcom/vivo/content/VivoConstants;->PLATFORM_TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/VivoSystemReflect;->PLATFORM_INFO:Ljava/lang/String;

    .line 441
    sget-object v0, Lcom/vivo/content/VivoConstants;->PRODUCT_TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/VivoSystemReflect;->PRODUCT_INFO:Ljava/lang/String;

    .line 442
    const-string v0, "VivoSystemReflect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VivoSystemReflect.init PLATFORM_INFO == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/app/VivoSystemReflect;->PLATFORM_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";PRODUCT_INFO == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/app/VivoSystemReflect;->PRODUCT_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 4
    .param p0, "libName"    # Ljava/lang/String;

    .prologue
    .line 463
    const-string v1, "VivoSystemReflect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start to load lib "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VivoSystemReflect"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static registerMangerService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    const-string v0, "hall_state_manager"

    new-instance v1, Landroid/app/VivoSystemReflect$1;

    invoke-direct {v1}, Landroid/app/VivoSystemReflect$1;-><init>()V

    invoke-static {v0, v2, v1}, Landroid/app/SystemServiceRegistry;->registerSystemService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 375
    const-string/jumbo v0, "motion_recongnition"

    new-instance v1, Landroid/app/VivoSystemReflect$2;

    invoke-direct {v1}, Landroid/app/VivoSystemReflect$2;-><init>()V

    invoke-static {v0, v2, v1}, Landroid/app/SystemServiceRegistry;->registerSystemService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 390
    const-string v0, "device_para_provide_service"

    new-instance v1, Landroid/app/VivoSystemReflect$3;

    invoke-direct {v1}, Landroid/app/VivoSystemReflect$3;-><init>()V

    invoke-static {v0, v2, v1}, Landroid/app/SystemServiceRegistry;->registerSystemService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 402
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->needVPM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const-string/jumbo v0, "vivo_permission_service"

    new-instance v1, Landroid/app/VivoSystemReflect$4;

    invoke-direct {v1}, Landroid/app/VivoSystemReflect$4;-><init>()V

    invoke-static {v0, v2, v1}, Landroid/app/SystemServiceRegistry;->registerSystemService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 417
    :cond_0
    const-string/jumbo v0, "vivo_perf_service"

    new-instance v1, Landroid/app/VivoSystemReflect$5;

    invoke-direct {v1}, Landroid/app/VivoSystemReflect$5;-><init>()V

    invoke-static {v0, v2, v1}, Landroid/app/SystemServiceRegistry;->registerSystemService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 430
    return-void
.end method


# virtual methods
.method public Call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "cName"    # Ljava/lang/String;
    .param p2, "MethodName"    # Ljava/lang/String;
    .param p3, "types"    # [Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/String;

    .prologue
    .line 44
    const/4 v7, 0x0

    .line 47
    .local v7, "retObject":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 52
    .local v2, "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 55
    .local v5, "obj":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/app/VivoSystemReflect;->getMethodTypesClass([Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v6

    .line 57
    .local v6, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1, p2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 59
    .local v4, "meth":Ljava/lang/reflect/Method;
    invoke-virtual {p0, p3, p4}, Landroid/app/VivoSystemReflect;->getMethodParamObject([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "argList":[Ljava/lang/Object;
    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 65
    .end local v0    # "argList":[Ljava/lang/Object;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "meth":Ljava/lang/reflect/Method;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "retObject":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 62
    .restart local v7    # "retObject":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ReflectTest()V
    .locals 6

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Landroid/app/VivoSystemReflect;->invokeClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/VivoSystemReflect;->invokeInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    const-string v1, "com.vivo.msense.MotionRecognitionManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Landroid/app/VivoSystemReflect;->invokeClass:Ljava/lang/Class;

    .line 126
    iget-object v1, p0, Landroid/app/VivoSystemReflect;->invokeClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/app/VivoSystemReflect;->invokeInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 137
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/app/VivoSystemReflect;->invokeClass:Ljava/lang/Class;

    const-string v2, "getMimeTypeForFile"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5

    .line 145
    :goto_1
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 140
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_1
.end method

.method public getMethodParamObject([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4
    .param p1, "types"    # [Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 99
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/Object;

    .line 100
    .local v1, "retObjects":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_a

    .line 101
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p2, v0

    if-eqz v2, :cond_2

    .line 102
    :cond_0
    aget-object v2, p1, v0

    const-string v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p1, v0

    const-string v3, "Integer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    :cond_1
    new-instance v2, Ljava/lang/Integer;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 100
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_3
    aget-object v2, p1, v0

    const-string v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    aget-object v2, p1, v0

    const-string v3, "Float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    :cond_4
    new-instance v2, Ljava/lang/Float;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 108
    :cond_5
    aget-object v2, p1, v0

    const-string v3, "double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    aget-object v2, p1, v0

    const-string v3, "Double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 109
    :cond_6
    new-instance v2, Ljava/lang/Double;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 111
    :cond_7
    aget-object v2, p1, v0

    const-string v3, "boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    aget-object v2, p1, v0

    const-string v3, "Boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 112
    :cond_8
    new-instance v2, Ljava/lang/Boolean;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 115
    :cond_9
    aget-object v2, p2, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 119
    :cond_a
    return-object v1
.end method

.method public getMethodTypesClass([Ljava/lang/String;)[Ljava/lang/Class;
    .locals 4
    .param p1, "types"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 72
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/Class;

    .line 73
    .local v0, "cs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_a

    .line 74
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    :cond_0
    aget-object v2, p1, v1

    const-string v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p1, v1

    const-string v3, "Integer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    :cond_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 73
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_3
    aget-object v2, p1, v1

    const-string v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    aget-object v2, p1, v1

    const-string v3, "Float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 79
    :cond_4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    goto :goto_1

    .line 81
    :cond_5
    aget-object v2, p1, v1

    const-string v3, "double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    aget-object v2, p1, v1

    const-string v3, "Double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 82
    :cond_6
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    goto :goto_1

    .line 84
    :cond_7
    aget-object v2, p1, v1

    const-string v3, "boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    aget-object v2, p1, v1

    const-string v3, "Boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 85
    :cond_8
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    goto :goto_1

    .line 88
    :cond_9
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_1

    .line 92
    :cond_a
    return-object v0
.end method
