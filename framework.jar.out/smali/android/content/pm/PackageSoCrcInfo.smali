.class public Landroid/content/pm/PackageSoCrcInfo;
.super Ljava/lang/Object;
.source "PackageSoCrcInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;
    }
.end annotation


# instance fields
.field private final mSoCrcTable:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageSoCrcInfo;->mSoCrcTable:Landroid/util/ArrayMap;

    .line 45
    return-void
.end method


# virtual methods
.method public getSoCrcInfo(Ljava/lang/String;)Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;
    .locals 1
    .param p1, "soDir"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/content/pm/PackageSoCrcInfo;->mSoCrcTable:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;

    return-object v0
.end method

.method public getSoCrcTable()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Landroid/content/pm/PackageSoCrcInfo;->mSoCrcTable:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public putSoCrcInfo(Ljava/lang/String;J)V
    .locals 2
    .param p1, "soDir"    # Ljava/lang/String;
    .param p2, "crcValue"    # J

    .prologue
    .line 37
    new-instance v0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;-><init>(JZ)V

    .line 38
    .local v0, "crcCheckInfo":Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;
    iget-object v1, p0, Landroid/content/pm/PackageSoCrcInfo;->mSoCrcTable:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public putSoCrcInfo(Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "soDir"    # Ljava/lang/String;
    .param p2, "crcValue"    # J
    .param p4, "isChecked"    # Z

    .prologue
    .line 26
    iget-object v1, p0, Landroid/content/pm/PackageSoCrcInfo;->mSoCrcTable:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;

    .line 27
    .local v0, "crcCheckInfo":Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;->setCrcCheck(JZ)V

    .line 29
    iget-object v1, p0, Landroid/content/pm/PackageSoCrcInfo;->mSoCrcTable:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;

    .end local v0    # "crcCheckInfo":Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;
    invoke-direct {v0, p2, p3, p4}, Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;-><init>(JZ)V

    .line 32
    .restart local v0    # "crcCheckInfo":Landroid/content/pm/PackageSoCrcInfo$CrcCheckInfo;
    iget-object v1, p0, Landroid/content/pm/PackageSoCrcInfo;->mSoCrcTable:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
