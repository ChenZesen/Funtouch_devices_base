.class public Lcom/vivo/common/autobrightness/LumaInfo;
.super Ljava/lang/Object;
.source "LumaInfo.java"


# static fields
.field public static final DEFAULT_LUMA_LEVEL:I = 0x3

.field public static final INVALID_CCT_VALUE:I = -0x1

.field public static final INVALID_INDEX_VALUE:I = -0x1

.field public static final INVALID_LUMA_VALUE:I = -0x1


# instance fields
.field private mCctValue:I

.field private mIndexValue:I

.field private mLumaLevel:I

.field private mLumaTimeout:Z

.field private mLumaValid:Z

.field private mLumaValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValid:Z

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaLevel:I

    .line 21
    iput v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValue:I

    .line 22
    iput v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mCctValue:I

    .line 23
    iput v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mIndexValue:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaTimeout:Z

    .line 26
    return-void
.end method

.method public constructor <init>(ZIII)V
    .locals 1
    .param p1, "valid"    # Z
    .param p2, "level"    # I
    .param p3, "luma"    # I
    .param p4, "cct"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValid:Z

    .line 29
    iput p2, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaLevel:I

    .line 30
    iput p3, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValue:I

    .line 31
    iput p4, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mCctValue:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaTimeout:Z

    .line 33
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/vivo/common/autobrightness/LumaInfo;)V
    .locals 1
    .param p1, "a"    # Lcom/vivo/common/autobrightness/LumaInfo;

    .prologue
    .line 35
    iget v0, p1, Lcom/vivo/common/autobrightness/LumaInfo;->mCctValue:I

    iput v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mCctValue:I

    .line 36
    iget v0, p1, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValue:I

    iput v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValue:I

    .line 37
    iget-boolean v0, p1, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValid:Z

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValid:Z

    .line 38
    iget v0, p1, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaLevel:I

    iput v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaLevel:I

    .line 39
    iget v0, p1, Lcom/vivo/common/autobrightness/LumaInfo;->mIndexValue:I

    iput v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mIndexValue:I

    .line 40
    iget-boolean v0, p1, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaTimeout:Z

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaTimeout:Z

    .line 41
    return-void
.end method

.method public getCctValue()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mCctValue:I

    return v0
.end method

.method public getIndexValue()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mIndexValue:I

    return v0
.end method

.method public getLumaLevel()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaLevel:I

    return v0
.end method

.method public getLumaTimeout()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaTimeout:Z

    return v0
.end method

.method public getLumaValid()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValid:Z

    return v0
.end method

.method public getLumaValue()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValue:I

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValid:Z

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaLevel:I

    .line 45
    iput v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValue:I

    .line 46
    iput v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mCctValue:I

    .line 47
    iput v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mCctValue:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaTimeout:Z

    .line 49
    return-void
.end method

.method public setCctValue(I)V
    .locals 0
    .param p1, "cct"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mCctValue:I

    .line 70
    return-void
.end method

.method public setIndexValue(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mIndexValue:I

    .line 77
    return-void
.end method

.method public setLumaLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaLevel:I

    .line 58
    return-void
.end method

.method public setLumaTimeout(Z)V
    .locals 0
    .param p1, "isTimeout"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaTimeout:Z

    .line 86
    return-void
.end method

.method public setLumaValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValid:Z

    .line 52
    return-void
.end method

.method public setLumaValue(I)V
    .locals 0
    .param p1, "luma"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValue:I

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLumaValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mLumaLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mLumaValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mCctValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mCctValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mLumaTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mLumaTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mIndexValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LumaInfo;->mIndexValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
