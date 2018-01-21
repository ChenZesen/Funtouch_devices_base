.class final enum Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;
.super Ljava/lang/Enum;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ACTIVE_FEATURE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

.field public static final enum FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

.field public static final enum FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    const-string v1, "FEATURE_ADAPTIVE_BACKLIGHT"

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    .line 171
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    const-string v1, "FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT"

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->value:I

    .line 177
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    const-class v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    invoke-virtual {v0}, [Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->value:I

    return v0
.end method
