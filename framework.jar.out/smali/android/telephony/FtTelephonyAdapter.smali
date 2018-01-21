.class public Landroid/telephony/FtTelephonyAdapter;
.super Ljava/lang/Object;
.source "FtTelephonyAdapter.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static sImpl:Landroid/telephony/FtTelephony;

.field private static sImpl2:Landroid/telephony/FtTelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Landroid/telephony/FtTelephonyAdapter;->sImpl:Landroid/telephony/FtTelephony;

    .line 16
    sput-object v0, Landroid/telephony/FtTelephonyAdapter;->sImpl2:Landroid/telephony/FtTelephony;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v3, Landroid/telephony/FtTelephonyAdapter;->sImpl2:Landroid/telephony/FtTelephony;

    if-eqz v3, :cond_0

    .line 25
    sget-object v3, Landroid/telephony/FtTelephonyAdapter;->sImpl2:Landroid/telephony/FtTelephony;

    .line 36
    :goto_0
    return-object v3

    .line 30
    :cond_0
    :try_start_0
    const-string v3, "com.android.internal.telephony.FtTelephonyAdapterImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 32
    .local v1, "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/FtTelephony;

    sput-object v3, Landroid/telephony/FtTelephonyAdapter;->sImpl2:Landroid/telephony/FtTelephony;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    :goto_1
    sget-object v3, Landroid/telephony/FtTelephonyAdapter;->sImpl2:Landroid/telephony/FtTelephony;

    goto :goto_0

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
