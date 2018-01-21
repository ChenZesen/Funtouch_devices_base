.class public Landroid/view/animation/VivoAccelerateDecelerateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "VivoAccelerateDecelerateInterpolator.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VivoAccelerateDecelerateInterpolator"

.field private static sInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 28
    invoke-direct {p0}, Landroid/view/animation/VivoAccelerateDecelerateInterpolator;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 32
    invoke-direct {p0}, Landroid/view/animation/VivoAccelerateDecelerateInterpolator;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const v3, 0x3e6b851f    # 0.23f

    .line 36
    sget-object v0, Landroid/view/animation/VivoAccelerateDecelerateInterpolator;->sInterpolator:Landroid/view/animation/PathInterpolator;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/animation/VivoAccelerateDecelerateInterpolator;->sInterpolator:Landroid/view/animation/PathInterpolator;

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 42
    sget-object v0, Landroid/view/animation/VivoAccelerateDecelerateInterpolator;->sInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
