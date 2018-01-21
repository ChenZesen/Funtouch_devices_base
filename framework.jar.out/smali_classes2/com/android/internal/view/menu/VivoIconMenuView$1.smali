.class Lcom/android/internal/view/menu/VivoIconMenuView$1;
.super Ljava/lang/Object;
.source "VivoIconMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/VivoIconMenuView;->createMoreItemView()Lcom/android/internal/view/menu/VivoIconMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/VivoIconMenuView;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/VivoIconMenuView;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuView$1;->this$0:Lcom/android/internal/view/menu/VivoIconMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuView$1;->this$0:Lcom/android/internal/view/menu/VivoIconMenuView;

    # getter for: Lcom/android/internal/view/menu/VivoIconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoIconMenuView;->access$000(Lcom/android/internal/view/menu/VivoIconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 126
    return-void
.end method
