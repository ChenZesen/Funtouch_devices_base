.class public Lcom/android/server/am/firewall/VivoAppRuleItem;
.super Ljava/lang/Object;
.source "VivoAppRuleItem.java"


# instance fields
.field private hasType1:Z

.field private hasType2:Z

.field private hasType3:Z

.field private hasType4:Z

.field private hasType6:Z

.field private hasType7:Z

.field private mAllowBringup:Z

.field private mBringupHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mSystemType:I

.field private mType1List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType2List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType3List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType4List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType1:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType2:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType3:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType4:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType6:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType7:Z

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mBringupHashMap:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType1List:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType2List:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType3List:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType4List:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mPackageName:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public addToTypeList(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 119
    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    if-ne p1, v0, :cond_2

    .line 122
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType1:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType1List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 125
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType2:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType2List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 128
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType3:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType3List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_4
    if-ne p1, v1, :cond_0

    .line 131
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType4:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType4List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getBringupRule()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mBringupHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemType()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mSystemType:I

    return v0
.end method

.method public getTypeList(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 157
    if-lt p1, v1, :cond_0

    if-le p1, v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :cond_1
    if-ne p1, v1, :cond_2

    .line 160
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType1:Z

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType1List:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    .line 164
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 165
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType2:Z

    if-eqz v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType2List:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    .line 169
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 170
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType3:Z

    if-eqz v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType3List:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    .line 174
    :cond_4
    if-ne p1, v2, :cond_0

    .line 175
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType4:Z

    if-eqz v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType4List:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasType(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    if-ltz p1, :cond_0

    if-gt p1, v3, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    if-nez p1, :cond_3

    .line 100
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mBringupHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 101
    :cond_3
    if-ne p1, v0, :cond_4

    .line 102
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType1:Z

    goto :goto_0

    .line 103
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 104
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType2:Z

    goto :goto_0

    .line 105
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 106
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType3:Z

    goto :goto_0

    .line 107
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 108
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType4:Z

    goto :goto_0

    .line 109
    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 110
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType6:Z

    goto :goto_0

    .line 111
    :cond_8
    if-ne p1, v3, :cond_0

    .line 112
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType7:Z

    goto :goto_0
.end method

.method public isAllowBringup()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mAllowBringup:Z

    return v0
.end method

.method public isAllowToBeBringedup(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 50
    iget-boolean v2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType1:Z

    if-eqz v2, :cond_2

    .line 51
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType1List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType2:Z

    if-eqz v2, :cond_3

    .line 56
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType2List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 57
    goto :goto_0

    .line 61
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mAllowBringup:Z

    goto :goto_0
.end method

.method public isAllowToBeBringedupBySystem()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType6:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType7:Z

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mAllowBringup:Z

    goto :goto_0
.end method

.method public isAllowToBringup(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 33
    iget-boolean v2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType3:Z

    if-eqz v2, :cond_2

    .line 34
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType3List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType4:Z

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType4List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 40
    goto :goto_0
.end method

.method public putBringupRule(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowBringup"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mBringupHashMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method

.method public removeFromTypeList(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 138
    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    if-ne p1, v0, :cond_2

    .line 141
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType1:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType1List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType1List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 144
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType2:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType2List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType2List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 147
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType3:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType3List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType3List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_4
    if-ne p1, v1, :cond_0

    .line 150
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType4List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mType4List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAllowBringup(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mAllowBringup:Z

    .line 206
    return-void
.end method

.method public setHasType(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "hasType"    # Z

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x1

    .line 78
    if-lt p1, v1, :cond_0

    if-gt p1, v2, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    if-ne p1, v1, :cond_2

    .line 81
    iput-boolean p2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType1:Z

    goto :goto_0

    .line 82
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 83
    iput-boolean p2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType2:Z

    goto :goto_0

    .line 84
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 85
    iput-boolean p2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType3:Z

    goto :goto_0

    .line 86
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 87
    iput-boolean p2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType4:Z

    goto :goto_0

    .line 88
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 89
    iput-boolean p2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType6:Z

    goto :goto_0

    .line 90
    :cond_6
    if-ne p1, v2, :cond_0

    .line 91
    iput-boolean p2, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType7:Z

    goto :goto_0
.end method

.method public setSystemType(I)V
    .locals 1
    .param p1, "systemType"    # I

    .prologue
    .line 210
    iget v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mSystemType:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/firewall/VivoAppRuleItem;->mSystemType:I

    .line 211
    return-void
.end method
