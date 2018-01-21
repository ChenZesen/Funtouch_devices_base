.class Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;
.super Ljava/lang/Object;
.source "AbcThumbsSelect.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/AbcThumbsSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/AbcThumbsSelect;


# direct methods
.method private constructor <init>(Lcom/vivo/common/AbcThumbsSelect;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/common/AbcThumbsSelect;Lcom/vivo/common/AbcThumbsSelect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/common/AbcThumbsSelect;
    .param p2, "x1"    # Lcom/vivo/common/AbcThumbsSelect$1;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;-><init>(Lcom/vivo/common/AbcThumbsSelect;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return v7

    .line 202
    :pswitch_0
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    iget-object v3, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mAbcThumbBg:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/vivo/common/AbcThumbsSelect;->access$100(Lcom/vivo/common/AbcThumbsSelect;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/common/AbcThumbsSelect;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # invokes: Lcom/vivo/common/AbcThumbsSelect;->updateAbcBackground(Z)V
    invoke-static {v2, v7}, Lcom/vivo/common/AbcThumbsSelect;->access$200(Lcom/vivo/common/AbcThumbsSelect;Z)V

    .line 206
    :pswitch_1
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    # setter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWinStartY:I
    invoke-static {v2, v3}, Lcom/vivo/common/AbcThumbsSelect;->access$302(Lcom/vivo/common/AbcThumbsSelect;I)I

    .line 207
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    # invokes: Lcom/vivo/common/AbcThumbsSelect;->findAbcTabChild(F)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/vivo/common/AbcThumbsSelect;->access$400(Lcom/vivo/common/AbcThumbsSelect;F)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->showPopupWin:Z
    invoke-static {v2}, Lcom/vivo/common/AbcThumbsSelect;->access$500(Lcom/vivo/common/AbcThumbsSelect;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/vivo/common/AbcThumbsSelect;->access$600(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vivo/common/AbcThumbsSelect;->access$700(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/vivo/common/AbcThumbsSelect;->access$600(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWinX:I
    invoke-static {v2}, Lcom/vivo/common/AbcThumbsSelect;->access$800(Lcom/vivo/common/AbcThumbsSelect;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWinY:I
    invoke-static {v3}, Lcom/vivo/common/AbcThumbsSelect;->access$900(Lcom/vivo/common/AbcThumbsSelect;)I

    move-result v3

    iget-object v4, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWinWidth:I
    invoke-static {v4}, Lcom/vivo/common/AbcThumbsSelect;->access$1000(Lcom/vivo/common/AbcThumbsSelect;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F
    invoke-static {v5}, Lcom/vivo/common/AbcThumbsSelect;->access$1100(Lcom/vivo/common/AbcThumbsSelect;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWinHeight:I
    invoke-static {v5}, Lcom/vivo/common/AbcThumbsSelect;->access$1200(Lcom/vivo/common/AbcThumbsSelect;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mDensityScale:F
    invoke-static {v6}, Lcom/vivo/common/AbcThumbsSelect;->access$1100(Lcom/vivo/common/AbcThumbsSelect;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 223
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vivo/common/AbcThumbsSelect;->access$700(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vivo/common/AbcThumbsSelect;->access$700(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vivo/common/AbcThumbsSelect;->access$700(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x3020035

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 226
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vivo/common/AbcThumbsSelect;->access$700(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_2
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vivo/common/AbcThumbsSelect;->access$1300(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mTouchListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/vivo/common/AbcThumbsSelect;->access$1400(Lcom/vivo/common/AbcThumbsSelect;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mTouchListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/vivo/common/AbcThumbsSelect;->access$1400(Lcom/vivo/common/AbcThumbsSelect;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mSelectTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/vivo/common/AbcThumbsSelect;->access$1300(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/vivo/common/AbcThumbsSelect;->access$600(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/PopupWindow;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    iget-object v4, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    invoke-virtual {v4}, Lcom/vivo/common/AbcThumbsSelect;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    iget-object v4, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWinX:I
    invoke-static {v4}, Lcom/vivo/common/AbcThumbsSelect;->access$800(Lcom/vivo/common/AbcThumbsSelect;)I

    move-result v4

    iget-object v5, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWinY:I
    invoke-static {v5}, Lcom/vivo/common/AbcThumbsSelect;->access$900(Lcom/vivo/common/AbcThumbsSelect;)I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x30

    goto :goto_3

    .line 228
    :cond_4
    iget-object v1, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mFloatText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vivo/common/AbcThumbsSelect;->access$700(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 239
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    iget-object v3, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I
    invoke-static {v3}, Lcom/vivo/common/AbcThumbsSelect;->access$1500(Lcom/vivo/common/AbcThumbsSelect;)I

    move-result v3

    # invokes: Lcom/vivo/common/AbcThumbsSelect;->setSelectTextViewTextColor(I)V
    invoke-static {v2, v3}, Lcom/vivo/common/AbcThumbsSelect;->access$1600(Lcom/vivo/common/AbcThumbsSelect;I)V

    .line 240
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->showPopupWin:Z
    invoke-static {v2}, Lcom/vivo/common/AbcThumbsSelect;->access$500(Lcom/vivo/common/AbcThumbsSelect;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/vivo/common/AbcThumbsSelect;->access$600(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 242
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/vivo/common/AbcThumbsSelect;->access$600(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 245
    :cond_5
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    invoke-virtual {v2, v8}, Lcom/vivo/common/AbcThumbsSelect;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # invokes: Lcom/vivo/common/AbcThumbsSelect;->updateAbcBackground(Z)V
    invoke-static {v2, v1}, Lcom/vivo/common/AbcThumbsSelect;->access$200(Lcom/vivo/common/AbcThumbsSelect;Z)V

    goto/16 :goto_0

    .line 250
    :pswitch_3
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    iget-object v3, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mTextColor:I
    invoke-static {v3}, Lcom/vivo/common/AbcThumbsSelect;->access$1500(Lcom/vivo/common/AbcThumbsSelect;)I

    move-result v3

    # invokes: Lcom/vivo/common/AbcThumbsSelect;->setSelectTextViewTextColor(I)V
    invoke-static {v2, v3}, Lcom/vivo/common/AbcThumbsSelect;->access$1600(Lcom/vivo/common/AbcThumbsSelect;I)V

    .line 251
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->showPopupWin:Z
    invoke-static {v2}, Lcom/vivo/common/AbcThumbsSelect;->access$500(Lcom/vivo/common/AbcThumbsSelect;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 252
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/vivo/common/AbcThumbsSelect;->access$600(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 253
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # getter for: Lcom/vivo/common/AbcThumbsSelect;->mPopupWin:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/vivo/common/AbcThumbsSelect;->access$600(Lcom/vivo/common/AbcThumbsSelect;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 256
    :cond_6
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    invoke-virtual {v2, v8}, Lcom/vivo/common/AbcThumbsSelect;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v2, p0, Lcom/vivo/common/AbcThumbsSelect$MyTouchListener;->this$0:Lcom/vivo/common/AbcThumbsSelect;

    # invokes: Lcom/vivo/common/AbcThumbsSelect;->updateAbcBackground(Z)V
    invoke-static {v2, v1}, Lcom/vivo/common/AbcThumbsSelect;->access$200(Lcom/vivo/common/AbcThumbsSelect;Z)V

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
