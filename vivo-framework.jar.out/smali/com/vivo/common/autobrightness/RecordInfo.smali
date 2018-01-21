.class public Lcom/vivo/common/autobrightness/RecordInfo;
.super Ljava/lang/Object;
.source "RecordInfo.java"


# static fields
.field public static final BIT_MAX:I

.field public static final BIT_MIN:I = 0x1

.field public static final BIT_NONE:I = 0x0

.field private static final DIGITAL_REX:Ljava/lang/String; = "\\d\\d*"

.field public static final ID_BRIGHT_START:I = 0x7

.field public static final ID_COUNT:I

.field public static final ID_INVALID:I = -0x1

.field public static final ID_MAX:I

.field public static final ID_MID:I

.field public static final ID_MIN:I = 0x0

.field public static final KEY_PREFIX:Ljava/lang/String; = "auto_brightness_info_"

.field private static final KEY_PREFIX_LEN:I

.field private static final mInfoPares:[Lcom/vivo/common/autobrightness/InfoPair;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 13
    const-string v1, "auto_brightness_info_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Lcom/vivo/common/autobrightness/RecordInfo;->KEY_PREFIX_LEN:I

    .line 21
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getScreenLevelCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    .line 22
    sget v1, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    .line 23
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getScreenLevelCount()I

    move-result v1

    sput v1, Lcom/vivo/common/autobrightness/RecordInfo;->ID_COUNT:I

    .line 34
    const/4 v1, 0x1

    sget v2, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    shl-int/2addr v1, v2

    sput v1, Lcom/vivo/common/autobrightness/RecordInfo;->BIT_MAX:I

    .line 37
    sget v1, Lcom/vivo/common/autobrightness/RecordInfo;->ID_COUNT:I

    new-array v1, v1, [Lcom/vivo/common/autobrightness/InfoPair;

    sput-object v1, Lcom/vivo/common/autobrightness/RecordInfo;->mInfoPares:[Lcom/vivo/common/autobrightness/InfoPair;

    .line 44
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    sget v1, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-gt v0, v1, :cond_0

    .line 45
    sget-object v1, Lcom/vivo/common/autobrightness/RecordInfo;->mInfoPares:[Lcom/vivo/common/autobrightness/InfoPair;

    new-instance v2, Lcom/vivo/common/autobrightness/InfoPair;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto_brightness_info_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/vivo/common/autobrightness/InfoPair;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 122
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 124
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "strDate":Ljava/lang/String;
    return-object v2
.end method

.method public static getIdByKey(Ljava/lang/String;)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 74
    sget-object v2, Lcom/vivo/common/autobrightness/RecordInfo;->mInfoPares:[Lcom/vivo/common/autobrightness/InfoPair;

    array-length v2, v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 75
    invoke-static {p0}, Lcom/vivo/common/autobrightness/RecordInfo;->getIdByKeyRex(Ljava/lang/String;)I

    move-result v1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    if-eqz p0, :cond_0

    .line 78
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_1
    sget v2, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-gt v0, v2, :cond_0

    .line 80
    sget-object v2, Lcom/vivo/common/autobrightness/RecordInfo;->mInfoPares:[Lcom/vivo/common/autobrightness/InfoPair;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vivo/common/autobrightness/RecordInfo;->mInfoPares:[Lcom/vivo/common/autobrightness/InfoPair;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/vivo/common/autobrightness/InfoPair;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    sget-object v1, Lcom/vivo/common/autobrightness/RecordInfo;->mInfoPares:[Lcom/vivo/common/autobrightness/InfoPair;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/vivo/common/autobrightness/InfoPair;->id:I

    goto :goto_0

    .line 78
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getIdByKeyRex(Ljava/lang/String;)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 91
    if-eqz p0, :cond_2

    const-string v3, "auto_brightness_info_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->KEY_PREFIX_LEN:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "strId":Ljava/lang/String;
    const-string v3, "\\d\\d*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    .local v0, "id":I
    if-ltz v0, :cond_0

    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-gt v0, v3, :cond_0

    .line 105
    .end local v0    # "id":I
    .end local v1    # "strId":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "id":I
    .restart local v1    # "strId":Ljava/lang/String;
    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    .end local v0    # "id":I
    :cond_1
    move v0, v2

    .line 101
    goto :goto_0

    .end local v1    # "strId":Ljava/lang/String;
    :cond_2
    move v0, v2

    .line 105
    goto :goto_0
.end method

.method static getKeyById(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 115
    if-ltz p0, :cond_0

    sget v0, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-le p0, v0, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/vivo/common/autobrightness/RecordInfo;->mInfoPares:[Lcom/vivo/common/autobrightness/InfoPair;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/vivo/common/autobrightness/InfoPair;->key:Ljava/lang/String;

    goto :goto_0
.end method
