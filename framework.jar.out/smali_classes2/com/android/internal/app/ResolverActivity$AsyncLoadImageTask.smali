.class Lcom/android/internal/app/ResolverActivity$AsyncLoadImageTask;
.super Landroid/os/AsyncTask;
.source "ResolverActivity.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
        "Ljava/lang/Void;",
        "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    .line 2980
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$AsyncLoadImageTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "x1"    # Lcom/android/internal/app/ResolverActivity$1;

    .prologue
    .line 2980
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity$AsyncLoadImageTask;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 8
    .param p1, "params"    # [Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 2984
    const/4 v6, 0x0

    aget-object v3, p1, v6

    .line 2985
    .local v3, "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2986
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$AsyncLoadImageTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v2

    .line 2987
    .local v2, "imageUtil":Lcom/vivo/content/ImageUtil;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/bbkcore/appstore/frcache/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getFrameworkPackageData()Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    move-result-object v7

    iget-object v7, v7, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mIconUrl:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2988
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2989
    .local v5, "tempIcon":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_0

    .line 2990
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$AsyncLoadImageTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->appStoreIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->access$1300(Lcom/android/internal/app/ResolverActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2992
    :cond_0
    invoke-virtual {v2, v5}, Lcom/vivo/content/ImageUtil;->createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2993
    .local v1, "iconBitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$AsyncLoadImageTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->bitmapCache:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->access$2200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2994
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$AsyncLoadImageTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v0, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2995
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2997
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "imageUtil":Lcom/vivo/content/ImageUtil;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "tempIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2979
    check-cast p1, [Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$AsyncLoadImageTask;->doInBackground([Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$AsyncLoadImageTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 3003
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2979
    check-cast p1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$AsyncLoadImageTask;->onPostExecute(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    return-void
.end method
