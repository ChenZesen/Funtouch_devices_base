.class public final enum Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;
.super Ljava/lang/Enum;
.source "MemoryColorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MEMORY_COLOR_PARAMS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

.field public static final enum HUE:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

.field public static final enum INTENSITY:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

.field public static final enum SATURATION:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    const-string v1, "HUE"

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->HUE:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    .line 21
    new-instance v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    const-string v1, "SATURATION"

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->SATURATION:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    .line 23
    new-instance v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    const-string v1, "INTENSITY"

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->INTENSITY:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->HUE:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->SATURATION:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->INTENSITY:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->$VALUES:[Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->value:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    return-object v0
.end method

.method public static values()[Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->$VALUES:[Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    invoke-virtual {v0}, [Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->value:I

    return v0
.end method
