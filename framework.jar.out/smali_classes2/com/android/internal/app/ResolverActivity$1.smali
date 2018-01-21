.class Lcom/android/internal/app/ResolverActivity$1;
.super Landroid/os/Handler;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 283
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 284
    .local v4, "packageStatus":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 285
    .local v3, "packageName":Ljava/lang/String;
    const-string v5, "ResolverActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " handleMessage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 287
    :cond_0
    const/4 v4, 0x1

    .line 296
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 297
    .local v1, "dis":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getFrameworkPackageData()Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    move-result-object v0

    .line 298
    .local v0, "data":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    if-eqz v0, :cond_1

    .line 299
    iget-object v5, v0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 300
    invoke-virtual {v1, v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->setStatus(I)V

    goto :goto_1

    .line 288
    .end local v0    # "data":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    .end local v1    # "dis":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 289
    const/4 v4, 0x2

    goto :goto_0

    .line 290
    :cond_3
    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 291
    const/4 v4, 0x4

    goto :goto_0

    .line 293
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 304
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 305
    return-void
.end method
