.class Lcom/android/internal/view/menu/VivoListMenuView$1;
.super Ljava/lang/Object;
.source "VivoListMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/VivoListMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/VivoListMenuView;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/VivoListMenuView;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoListMenuView$1;->this$0:Lcom/android/internal/view/menu/VivoListMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoListMenuView$1;->this$0:Lcom/android/internal/view/menu/VivoListMenuView;

    # getter for: Lcom/android/internal/view/menu/VivoListMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoListMenuView;->access$000(Lcom/android/internal/view/menu/VivoListMenuView;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 34
    return-void
.end method
