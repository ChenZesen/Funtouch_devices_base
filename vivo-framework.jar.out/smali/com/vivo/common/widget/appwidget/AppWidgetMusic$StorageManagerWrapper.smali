.class Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;
.super Ljava/lang/Object;
.source "AppWidgetMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageManagerWrapper"
.end annotation


# instance fields
.field private mTarget:Ljava/lang/Object;

.field private sMethodgetVolumePaths:Ljava/lang/reflect/Method;

.field private sMethodgetVolumeState:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;


# direct methods
.method public constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;Ljava/lang/Object;)V
    .locals 6
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    :try_start_0
    iput-object p2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;->mTarget:Ljava/lang/Object;

    .line 827
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumePaths"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;->sMethodgetVolumePaths:Ljava/lang/reflect/Method;

    .line 828
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumeState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;->sMethodgetVolumeState:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getInternalStorageState()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 846
    :try_start_0
    iget-object v8, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;->sMethodgetVolumePaths:Ljava/lang/reflect/Method;

    iget-object v11, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;->mTarget:Ljava/lang/Object;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 847
    .local v6, "paths":[Ljava/lang/String;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v1, v3

    .line 849
    .local v5, "path":Ljava/lang/String;
    const-string v8, "/sdcard0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "/sdcard"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 851
    :cond_0
    iget-object v8, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;->sMethodgetVolumeState:Ljava/lang/reflect/Method;

    iget-object v11, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$StorageManagerWrapper;->mTarget:Ljava/lang/Object;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 852
    .local v7, "state":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_1

    move v8, v9

    .line 869
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "paths":[Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/String;
    :goto_1
    return v8

    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "paths":[Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/String;
    :cond_1
    move v8, v10

    .line 858
    goto :goto_1

    .line 847
    .end local v7    # "state":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 863
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "paths":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 866
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v8, v10

    .line 867
    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "paths":[Ljava/lang/String;
    :cond_3
    move v8, v10

    .line 869
    goto :goto_1
.end method
