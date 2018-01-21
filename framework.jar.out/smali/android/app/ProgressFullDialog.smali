.class public Landroid/app/ProgressFullDialog;
.super Landroid/app/Dialog;
.source "ProgressFullDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMessageView1:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    sget-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->BOOT_NOTIFY_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v0}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressFullDialog;-><init>(Landroid/content/Context;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 90
    sget-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->BOOT_NOTIFY_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v0}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressFullDialog;->mProgressStyle:I

    .line 92
    invoke-direct {p0}, Landroid/app/ProgressFullDialog;->initFormats()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Landroid/app/ProgressFullDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Landroid/app/ProgressFullDialog;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/ProgressFullDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/ProgressFullDialog;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ProgressFullDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/app/ProgressFullDialog;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ProgressFullDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Landroid/app/ProgressFullDialog;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/ProgressFullDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/app/ProgressFullDialog;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Landroid/app/ProgressFullDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 97
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProgressFullDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 98
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 99
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    iget v0, p0, Landroid/app/ProgressFullDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 401
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressFullDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressFullDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressFullDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressFullDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 108
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressFullDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressFullDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressFullDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 113
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressFullDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressFullDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressFullDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 119
    new-instance v0, Landroid/app/ProgressFullDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressFullDialog;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "dialog":Landroid/app/ProgressFullDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressFullDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v0, p2}, Landroid/app/ProgressFullDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v0, p3}, Landroid/app/ProgressFullDialog;->setIndeterminate(Z)V

    .line 123
    invoke-virtual {v0, p4}, Landroid/app/ProgressFullDialog;->setCancelable(Z)V

    .line 124
    invoke-virtual {v0, p5}, Landroid/app/ProgressFullDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 125
    invoke-virtual {v0}, Landroid/app/ProgressFullDialog;->show()V

    .line 126
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 269
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/ProgressFullDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/ProgressFullDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/ProgressFullDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 282
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 284
    invoke-direct {p0}, Landroid/app/ProgressFullDialog;->onProgressChanged()V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget v0, p0, Landroid/app/ProgressFullDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressFullDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 291
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 293
    invoke-direct {p0}, Landroid/app/ProgressFullDialog;->onProgressChanged()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget v0, p0, Landroid/app/ProgressFullDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressFullDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 330
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/app/ProgressFullDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 131
    iget-object v3, p0, Landroid/app/ProgressFullDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 132
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Landroid/app/ProgressFullDialog;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v5, 0x101005d

    const/4 v6, 0x0

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v3, p0, Landroid/app/ProgressFullDialog;->mProgressStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 136
    const-string v3, "ProgressFullDialog"

    const-string v4, "5setMessage message ="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v3, Landroid/app/ProgressFullDialog$1;

    invoke-direct {v3, p0}, Landroid/app/ProgressFullDialog$1;-><init>(Landroid/app/ProgressFullDialog;)V

    iput-object v3, p0, Landroid/app/ProgressFullDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 165
    const/16 v3, 0x11

    const v4, 0x109002d

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 169
    const v3, 0x1020307

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressFullDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 170
    const v3, 0x1020306

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressFullDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 171
    invoke-virtual {p0, v2}, Landroid/app/ProgressFullDialog;->setContentView(Landroid/view/View;)V

    .line 187
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    iget v3, p0, Landroid/app/ProgressFullDialog;->mMax:I

    if-lez v3, :cond_0

    .line 189
    iget v3, p0, Landroid/app/ProgressFullDialog;->mMax:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressFullDialog;->setMax(I)V

    .line 191
    :cond_0
    iget v3, p0, Landroid/app/ProgressFullDialog;->mProgressVal:I

    if-lez v3, :cond_1

    .line 192
    iget v3, p0, Landroid/app/ProgressFullDialog;->mProgressVal:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressFullDialog;->setProgress(I)V

    .line 194
    :cond_1
    iget v3, p0, Landroid/app/ProgressFullDialog;->mSecondaryProgressVal:I

    if-lez v3, :cond_2

    .line 195
    iget v3, p0, Landroid/app/ProgressFullDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressFullDialog;->setSecondaryProgress(I)V

    .line 197
    :cond_2
    iget v3, p0, Landroid/app/ProgressFullDialog;->mIncrementBy:I

    if-lez v3, :cond_3

    .line 198
    iget v3, p0, Landroid/app/ProgressFullDialog;->mIncrementBy:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressFullDialog;->incrementProgressBy(I)V

    .line 200
    :cond_3
    iget v3, p0, Landroid/app/ProgressFullDialog;->mIncrementSecondaryBy:I

    if-lez v3, :cond_4

    .line 201
    iget v3, p0, Landroid/app/ProgressFullDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressFullDialog;->incrementSecondaryProgressBy(I)V

    .line 203
    :cond_4
    iget-object v3, p0, Landroid/app/ProgressFullDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 204
    const-string v3, "ProgressFullDialog"

    const-string/jumbo v4, "zsetMessage message ="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v3, p0, Landroid/app/ProgressFullDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/app/ProgressFullDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_5
    iget-object v3, p0, Landroid/app/ProgressFullDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 208
    iget-object v3, p0, Landroid/app/ProgressFullDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/app/ProgressFullDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_6
    iget-object v3, p0, Landroid/app/ProgressFullDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 213
    :cond_7
    iget-boolean v3, p0, Landroid/app/ProgressFullDialog;->mIndeterminate:Z

    invoke-virtual {p0, v3}, Landroid/app/ProgressFullDialog;->setIndeterminate(Z)V

    .line 214
    invoke-direct {p0}, Landroid/app/ProgressFullDialog;->onProgressChanged()V

    .line 215
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 216
    return-void

    .line 173
    .end local v2    # "view":Landroid/view/View;
    :cond_8
    const-string v3, "ProgressFullDialog"

    const-string v4, "6setMessage message ="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const v3, 0x303002c

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 181
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/ProgressFullDialog;->setContentView(Landroid/view/View;)V

    .line 182
    const v3, 0x30d0063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 184
    const v3, 0x30d0064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressFullDialog;->mMessageView:Landroid/widget/TextView;

    .line 185
    const v3, 0x30d0065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressFullDialog;->mMessageView1:Landroid/widget/TextView;

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProgressFullDialog;->mHasStarted:Z

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ProgressFullDialog;->setProgress(I)V

    .line 223
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProgressFullDialog;->mHasStarted:Z

    .line 229
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 319
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iput-boolean p1, p0, Landroid/app/ProgressFullDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 311
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iput-object p1, p0, Landroid/app/ProgressFullDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 273
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 275
    invoke-direct {p0}, Landroid/app/ProgressFullDialog;->onProgressChanged()V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iput p1, p0, Landroid/app/ProgressFullDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 334
    const-string v4, "ProgressFullDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMessage message ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v4, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_2

    .line 336
    iget v4, p0, Landroid/app/ProgressFullDialog;->mProgressStyle:I

    if-ne v4, v8, :cond_0

    .line 338
    const-string v4, "ProgressFullDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0setMessage message ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "mesg":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    iget-object v4, p0, Landroid/app/ProgressFullDialog;->mMessageView:Landroid/widget/TextView;

    const v5, 0x30e0117

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object v4, p0, Landroid/app/ProgressFullDialog;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v4, p0, Landroid/app/ProgressFullDialog;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "ss":[Ljava/lang/String;
    aget-object v4, v2, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 350
    .local v0, "cur":I
    aget-object v4, v2, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 351
    .local v3, "total":I
    mul-int/lit16 v4, v0, 0x3e8

    div-int/2addr v4, v3

    invoke-virtual {p0, v4}, Landroid/app/ProgressFullDialog;->setProgress(I)V

    goto :goto_0

    .line 354
    .end local v0    # "cur":I
    .end local v2    # "ss":[Ljava/lang/String;
    .end local v3    # "total":I
    :cond_1
    iget-object v4, p0, Landroid/app/ProgressFullDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v4, p0, Landroid/app/ProgressFullDialog;->mMessageView1:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    const-string v4, "ProgressFullDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1setMessage message ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    .end local v1    # "mesg":Ljava/lang/String;
    :cond_2
    const-string v4, "ProgressFullDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2setMessage message ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput-object p1, p0, Landroid/app/ProgressFullDialog;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 232
    const-string v0, "ProgressFullDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProgress value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v0, p0, Landroid/app/ProgressFullDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "ProgressFullDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1setProgress value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 236
    invoke-direct {p0}, Landroid/app/ProgressFullDialog;->onProgressChanged()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iput p1, p0, Landroid/app/ProgressFullDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 300
    const-string v0, "ProgressFullDialog"

    const-string v1, "asetMessage message ="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "ProgressFullDialog"

    const-string v1, "bsetMessage message ="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    :goto_0
    return-void

    .line 305
    :cond_0
    const-string v0, "ProgressFullDialog"

    const-string v1, "csetMessage message ="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iput-object p1, p0, Landroid/app/ProgressFullDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 378
    iput-object p1, p0, Landroid/app/ProgressFullDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Landroid/app/ProgressFullDialog;->onProgressChanged()V

    .line 380
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 391
    iput-object p1, p0, Landroid/app/ProgressFullDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 392
    invoke-direct {p0}, Landroid/app/ProgressFullDialog;->onProgressChanged()V

    .line 393
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 366
    iput p1, p0, Landroid/app/ProgressFullDialog;->mProgressStyle:I

    .line 367
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 243
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/app/ProgressFullDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 245
    invoke-direct {p0}, Landroid/app/ProgressFullDialog;->onProgressChanged()V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iput p1, p0, Landroid/app/ProgressFullDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
