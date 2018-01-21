.class Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppStoreServiceConnection"
.end annotation


# instance fields
.field private data:Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;",
            ">;"
        }
    .end annotation
.end field

.field private tag:I

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "x1"    # Lcom/android/internal/app/ResolverActivity$1;

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    return-void
.end method


# virtual methods
.method public getFrameworkPackageData()Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->data:Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    return-object v0
.end method

.method public getPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->tag:I

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 352
    const-string v3, "ResolverActivity"

    const-string v4, "AppStoreServiceConnection onServiceConnected..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p2}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;

    move-result-object v4

    # setter for: Lcom/android/internal/app/ResolverActivity;->mService:Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$302(Lcom/android/internal/app/ResolverActivity;Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;)Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;

    .line 354
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/app/ResolverActivity;->isBindAppStoreServiceOk:Z
    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->access$402(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 355
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected success "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mService:Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isBindAppStoreServiceOk = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->isBindAppStoreServiceOk:Z
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mService:Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mCallback:Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface$Stub;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface$Stub;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;->registerClientCallBack(Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    iget v3, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 384
    :goto_1
    return-void

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerClientCallBack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    .end local v1    # "e":Ljava/lang/Throwable;
    :pswitch_0
    const-string v3, "ResolverActivity"

    const-string v4, "nothing to do now..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 368
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mService:Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->data:Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    invoke-interface {v3, v4}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;->goAppDetail(Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 369
    :catch_1
    move-exception v1

    .line 370
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goAppDetail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 375
    .end local v1    # "e":Ljava/lang/Throwable;
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    .line 376
    .local v0, "data":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mService:Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;->queryPackageStatus(Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 379
    .end local v0    # "data":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v1

    .line 380
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryPackageStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 378
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 388
    const-string v1, "ResolverActivity"

    const-string v2, "onServiceDisconnected ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mService:Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mService:Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mCallback:Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface$Stub;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;->unRegisterClientCallBack(Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/app/ResolverActivity;->isBindAppStoreServiceOk:Z
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity;->access$402(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 398
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/app/ResolverActivity;->mService:Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity;->access$302(Lcom/android/internal/app/ResolverActivity;Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;)Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;

    .line 399
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterClientCallBack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFrameworkPackageData(Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;)V
    .locals 0
    .param p1, "data"    # Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->data:Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    .line 348
    return-void
.end method

.method public setFrameworkPackageDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->dataList:Ljava/util/List;

    .line 341
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/android/internal/app/ResolverActivity$AppStoreServiceConnection;->tag:I

    .line 334
    return-void
.end method
