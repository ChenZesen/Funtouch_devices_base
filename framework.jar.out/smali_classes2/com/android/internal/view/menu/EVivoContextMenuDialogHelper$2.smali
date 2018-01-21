.class Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$2;
.super Ljava/lang/Object;
.source "EVivoContextMenuDialogHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$2;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$2;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mContextMenuContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$300(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$2;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$200(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper$2;->this$0:Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;

    # getter for: Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;->access$200(Lcom/android/internal/view/menu/EVivoContextMenuDialogHelper;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 154
    return-void
.end method
