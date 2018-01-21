.class public final enum Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;
.super Ljava/lang/Enum;
.source "PictureAdjustmentConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PICTURE_ADJUSTMENT_PARAMS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

.field public static final enum CONTRAST:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

.field public static final enum HUE:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

.field public static final enum INTENSITY:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

.field public static final enum SATURATION:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

.field public static final enum SATURATION_THRESHOLD:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    const-string v1, "HUE"

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->HUE:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    .line 22
    new-instance v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    const-string v1, "SATURATION"

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    .line 24
    new-instance v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    const-string v1, "INTENSITY"

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->INTENSITY:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    .line 26
    new-instance v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    const-string v1, "CONTRAST"

    invoke-direct {v0, v1, v5, v5}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->CONTRAST:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    .line 28
    new-instance v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    const-string v1, "SATURATION_THRESHOLD"

    invoke-direct {v0, v1, v6, v6}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION_THRESHOLD:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->HUE:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->INTENSITY:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->CONTRAST:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION_THRESHOLD:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->$VALUES:[Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->value:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    return-object v0
.end method

.method public static values()[Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->$VALUES:[Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {v0}, [Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->value:I

    return v0
.end method
