.class Lcom/vivo/app/DatePickerDialog$5;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/app/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/vivo/app/DatePickerDialog$DateSetCallBack;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/vivo/app/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/vivo/app/DatePickerDialog$5;->this$0:Lcom/vivo/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$5;->this$0:Lcom/vivo/app/DatePickerDialog;

    # invokes: Lcom/vivo/app/DatePickerDialog;->lunarSelect()V
    invoke-static {v0}, Lcom/vivo/app/DatePickerDialog;->access$1000(Lcom/vivo/app/DatePickerDialog;)V

    .line 230
    return-void
.end method
