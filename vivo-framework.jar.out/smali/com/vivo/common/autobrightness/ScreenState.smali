.class public final Lcom/vivo/common/autobrightness/ScreenState;
.super Ljava/lang/Object;
.source "ScreenState.java"


# static fields
.field private static final ANDROID_KITKAT_SDK_INT:I = 0x13

.field private static final POLICY_BRIGHT:I = 0x3

.field private static final POLICY_DIM:I = 0x2

.field private static final POLICY_DOZE:I = 0x1

.field private static final POLICY_OFF:I = 0x0

.field private static final SCREEN_STATE_BRIGHT:I = 0x2

.field private static final SCREEN_STATE_DIM:I = 0x1

.field private static final SCREEN_STATE_OFF:I

.field public static final STATE_SCREEN_BRIGHT:I

.field public static final STATE_SCREEN_DIM:I

.field public static final STATE_SCREEN_DOZE:I

.field public static final STATE_SCREEN_OFF:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 48
    sput v3, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_OFF:I

    .line 49
    sput v2, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_DOZE:I

    .line 50
    sput v4, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_DIM:I

    .line 51
    const/4 v0, 0x3

    sput v0, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    sput v3, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_OFF:I

    .line 54
    sput v2, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_DOZE:I

    .line 55
    sput v2, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_DIM:I

    .line 56
    sput v4, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
