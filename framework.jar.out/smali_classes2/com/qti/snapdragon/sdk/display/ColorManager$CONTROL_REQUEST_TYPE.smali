.class final enum Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;
.super Ljava/lang/Enum;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CONTROL_REQUEST_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

.field public static final enum OFF:Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

.field public static final enum ON:Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->ON:Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->OFF:Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    .line 189
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->ON:Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->OFF:Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

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
    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->value:I

    .line 196
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    const-class v0, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    invoke-virtual {v0}, [Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->value:I

    return v0
.end method
