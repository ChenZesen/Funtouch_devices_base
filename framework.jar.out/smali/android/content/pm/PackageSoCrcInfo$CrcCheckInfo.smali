.class public Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;
.super Ljava/lang/Object;
.source "PackageSoCrcInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageSoCrcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrcCheckInfo"
.end annotation


# instance fields
.field private crcValue:J

.field private isCheckedExist:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "crcValue"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;->crcValue:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;->isCheckedExist:Z

    .line 57
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "crcValue"    # J
    .param p3, "isChecked"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;->crcValue:J

    .line 51
    iput-boolean p3, p0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;->isCheckedExist:Z

    .line 52
    return-void
.end method


# virtual methods
.method public getCrcValue()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;->crcValue:J

    return-wide v0
.end method

.method public isCheckedExist()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;->isCheckedExist:Z

    return v0
.end method

.method public setCheckedExist(Z)V
    .locals 0
    .param p1, "isCheck"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;->isCheckedExist:Z

    .line 74
    return-void
.end method

.method public setCrcCheck(JZ)V
    .locals 1
    .param p1, "crcValue"    # J
    .param p3, "isChecked"    # Z

    .prologue
    .line 60
    iput-wide p1, p0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;->crcValue:J

    .line 61
    iput-boolean p3, p0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;->isCheckedExist:Z

    .line 62
    return-void
.end method
