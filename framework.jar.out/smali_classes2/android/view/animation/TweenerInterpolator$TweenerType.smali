.class public final enum Landroid/view/animation/TweenerInterpolator$TweenerType;
.super Ljava/lang/Enum;
.source "TweenerInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/TweenerInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TweenerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/animation/TweenerInterpolator$TweenerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum bounce:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum bouncePast:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeFrom:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeFromTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInBack:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInCirc:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInCubic:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInExpo:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInOutBack:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInOutCirc:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInOutCubic:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInOutExpo:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInOutQuad:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInOutQuart:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInOutQuint:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInOutSine:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInQuad:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInQuart:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInQuint:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeInSine:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeOutBack:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeOutBounce:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeOutCirc:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeOutCubic:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeOutExpo:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeOutQuad:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeOutQuart:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeOutQuint:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeOutSine:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum easeTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum elastic:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum flicker:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum reverse:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum sinusoidal:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum spring:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum swingFrom:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum swingFromTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum swingTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

.field public static final enum wobble:Landroid/view/animation/TweenerInterpolator$TweenerType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInQuad"

    invoke-direct {v0, v1, v3}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInQuad:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeOutQuad"

    invoke-direct {v0, v1, v4}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutQuad:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInOutQuad"

    invoke-direct {v0, v1, v5}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutQuad:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInCubic"

    invoke-direct {v0, v1, v6}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInCubic:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeOutCubic"

    invoke-direct {v0, v1, v7}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutCubic:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInOutCubic"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutCubic:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInQuart"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInQuart:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeOutQuart"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutQuart:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInOutQuart"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutQuart:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInQuint"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInQuint:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeOutQuint"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutQuint:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInOutQuint"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutQuint:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInSine"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInSine:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeOutSine"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutSine:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInOutSine"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutSine:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInExpo"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInExpo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeOutExpo"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutExpo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInOutExpo"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutExpo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInCirc"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInCirc:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeOutCirc"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutCirc:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInOutCirc"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutCirc:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInBack"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInBack:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeOutBack"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutBack:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeInOutBack"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutBack:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "bounce"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->bounce:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "bouncePast"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->bouncePast:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeOutBounce"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutBounce:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeFromTo"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeFromTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeFrom"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeFrom:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "easeTo"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "swingFromTo"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->swingFromTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "swingFrom"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->swingFrom:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "swingTo"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->swingTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "elastic"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->elastic:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "sinusoidal"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->sinusoidal:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "reverse"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->reverse:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "flicker"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->flicker:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "wobble"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->wobble:Landroid/view/animation/TweenerInterpolator$TweenerType;

    new-instance v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    const-string v1, "spring"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Landroid/view/animation/TweenerInterpolator$TweenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->spring:Landroid/view/animation/TweenerInterpolator$TweenerType;

    .line 41
    const/16 v0, 0x27

    new-array v0, v0, [Landroid/view/animation/TweenerInterpolator$TweenerType;

    sget-object v1, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInQuad:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutQuad:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutQuad:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInCubic:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutCubic:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutCubic:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInQuart:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutQuart:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutQuart:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInQuint:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutQuint:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutQuint:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInSine:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutSine:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutSine:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInExpo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutExpo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutExpo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInCirc:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutCirc:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutCirc:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInBack:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutBack:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeInOutBack:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->bounce:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->bouncePast:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeOutBounce:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeFromTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeFrom:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->easeTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->swingFromTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->swingFrom:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->swingTo:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->elastic:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->sinusoidal:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->reverse:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->flicker:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->wobble:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Landroid/view/animation/TweenerInterpolator$TweenerType;->spring:Landroid/view/animation/TweenerInterpolator$TweenerType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->$VALUES:[Landroid/view/animation/TweenerInterpolator$TweenerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/animation/TweenerInterpolator$TweenerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/animation/TweenerInterpolator$TweenerType;

    return-object v0
.end method

.method public static values()[Landroid/view/animation/TweenerInterpolator$TweenerType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/view/animation/TweenerInterpolator$TweenerType;->$VALUES:[Landroid/view/animation/TweenerInterpolator$TweenerType;

    invoke-virtual {v0}, [Landroid/view/animation/TweenerInterpolator$TweenerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/animation/TweenerInterpolator$TweenerType;

    return-object v0
.end method
