.class Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$3;
.super Ljava/lang/Object;
.source "VivoContextMenuDialogHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$3;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$3;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mContextMenuContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$400(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$3;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$300(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper$3;->this$0:Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;->access$300(Lcom/android/internal/view/menu/VivoContextMenuDialogHelper;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 259
    return-void
.end method
