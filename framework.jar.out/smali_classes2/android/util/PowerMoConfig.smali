.class public final Landroid/util/PowerMoConfig;
.super Ljava/lang/Object;
.source "PowerMoConfig.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static FEATURE:Ljava/lang/String;

.field public static WITHOUT_ALL:Z

.field public static WITHOUT_MULTI_PROCESS:Z

.field public static mEnabledOfDualInstance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 29
    const-string v0, ""

    sput-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    .line 33
    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    .line 38
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v2, "multi-process"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    .line 51
    sput-boolean v1, Landroid/util/PowerMoConfig;->mEnabledOfDualInstance:Z

    return-void

    :cond_1
    move v0, v1

    .line 38
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadConfig()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "persist.powermo.disfeature"

    const-string v1, "all"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    .line 42
    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    .line 43
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v1, "multi-process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    .line 44
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    .line 48
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    .line 49
    return-void
.end method
