.class Lvivo/util/Spring$PhysicsState;
.super Ljava/lang/Object;
.source "Spring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvivo/util/Spring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhysicsState"
.end annotation


# instance fields
.field position:D

.field velocity:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvivo/util/Spring$1;)V
    .locals 0
    .param p1, "x0"    # Lvivo/util/Spring$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lvivo/util/Spring$PhysicsState;-><init>()V

    return-void
.end method
