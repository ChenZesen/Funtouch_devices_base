.class public Lvivo/util/SpringConfig;
.super Ljava/lang/Object;
.source "SpringConfig.java"


# static fields
.field public static defaultConfig:Lvivo/util/SpringConfig;


# instance fields
.field public friction:D

.field public tension:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v0, v1, v2, v3}, Lvivo/util/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lvivo/util/SpringConfig;

    move-result-object v0

    sput-object v0, Lvivo/util/SpringConfig;->defaultConfig:Lvivo/util/SpringConfig;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "tension"    # D
    .param p3, "friction"    # D

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lvivo/util/SpringConfig;->tension:D

    .line 31
    iput-wide p3, p0, Lvivo/util/SpringConfig;->friction:D

    .line 32
    return-void
.end method

.method public static fromBouncinessAndSpeed(DD)Lvivo/util/SpringConfig;
    .locals 6
    .param p0, "bounciness"    # D
    .param p2, "speed"    # D

    .prologue
    .line 55
    new-instance v0, Lvivo/util/BouncyConversion;

    invoke-direct {v0, p2, p3, p0, p1}, Lvivo/util/BouncyConversion;-><init>(DD)V

    .line 56
    .local v0, "bouncyConversion":Lvivo/util/BouncyConversion;
    invoke-virtual {v0}, Lvivo/util/BouncyConversion;->getBouncyTension()D

    move-result-wide v2

    invoke-virtual {v0}, Lvivo/util/BouncyConversion;->getBouncyFriction()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lvivo/util/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lvivo/util/SpringConfig;

    move-result-object v1

    return-object v1
.end method

.method public static fromOrigamiTensionAndFriction(DD)Lvivo/util/SpringConfig;
    .locals 6
    .param p0, "qcTension"    # D
    .param p2, "qcFriction"    # D

    .prologue
    .line 41
    new-instance v0, Lvivo/util/SpringConfig;

    invoke-static {p0, p1}, Lvivo/util/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v2

    invoke-static {p2, p3}, Lvivo/util/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lvivo/util/SpringConfig;-><init>(DD)V

    return-object v0
.end method
