.class public Lcom/vivo/common/brightmapping/MappingConfig;
.super Ljava/lang/Object;
.source "MappingConfig.java"


# static fields
.field private static final MODEL:Ljava/lang/String;

.field private static final NEED_MAPPING_LIST:[Ljava/lang/String;

.field private static final mNeedMapping:Z

.field private static final mProgressMax:I

.field private static final mProgressMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    const-string v0, "ro.product.model.bbk"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/brightmapping/MappingConfig;->MODEL:Ljava/lang/String;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PD1610"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PD1616"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "PD1624"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PD1619"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/brightmapping/MappingConfig;->NEED_MAPPING_LIST:[Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->isNeedMappingInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/brightmapping/MappingConfig;->mNeedMapping:Z

    .line 45
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->getProgressMinInner()I

    move-result v0

    sput v0, Lcom/vivo/common/brightmapping/MappingConfig;->mProgressMin:I

    .line 46
    invoke-static {}, Lcom/vivo/common/brightmapping/MappingConfig;->getProgressMaxInner()I

    move-result v0

    sput v0, Lcom/vivo/common/brightmapping/MappingConfig;->mProgressMax:I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProgressMax()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/vivo/common/brightmapping/MappingConfig;->mProgressMax:I

    return v0
.end method

.method private static getProgressMaxInner()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x1d2

    return v0
.end method

.method public static getProgressMin()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/vivo/common/brightmapping/MappingConfig;->mProgressMin:I

    return v0
.end method

.method private static getProgressMinInner()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public static isNeedMapping()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/vivo/common/brightmapping/MappingConfig;->mNeedMapping:Z

    return v0
.end method

.method private static isNeedMappingInner()Z
    .locals 5

    .prologue
    .line 14
    sget-object v0, Lcom/vivo/common/brightmapping/MappingConfig;->NEED_MAPPING_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 15
    .local v3, "model":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/brightmapping/MappingConfig;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    const/4 v4, 0x1

    .line 19
    .end local v3    # "model":Ljava/lang/String;
    :goto_1
    return v4

    .line 14
    .restart local v3    # "model":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    .end local v3    # "model":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
