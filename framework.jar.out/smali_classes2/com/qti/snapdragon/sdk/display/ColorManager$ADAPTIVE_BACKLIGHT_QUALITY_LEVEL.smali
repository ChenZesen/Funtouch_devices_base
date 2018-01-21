.class public final enum Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;
.super Ljava/lang/Enum;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ADAPTIVE_BACKLIGHT_QUALITY_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

.field public static final enum AUTO:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

.field public static final enum HIGH:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

.field public static final enum LOW:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

.field public static final enum MEDIUM:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->LOW:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    .line 210
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->MEDIUM:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    .line 211
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->HIGH:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    .line 212
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v5, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->AUTO:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    .line 208
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->LOW:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->MEDIUM:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->HIGH:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->AUTO:Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

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
    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 216
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->value:I

    .line 217
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 208
    const-class v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    return-object v0
.end method

.method public static values()[Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    invoke-virtual {v0}, [Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->value:I

    return v0
.end method
