.class public final enum Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;
.super Ljava/lang/Enum;
.source "MemoryColorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MEMORY_COLOR_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

.field public static final enum FOLIAGE:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

.field public static final enum SKIN:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

.field public static final enum SKY:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    const-string v1, "SKIN"

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->SKIN:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    .line 44
    new-instance v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    const-string v1, "SKY"

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->SKY:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    .line 47
    new-instance v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    const-string v1, "FOLIAGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->FOLIAGE:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->SKIN:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->SKY:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->FOLIAGE:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->value:I

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    invoke-virtual {v0}, [Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->value:I

    return v0
.end method
