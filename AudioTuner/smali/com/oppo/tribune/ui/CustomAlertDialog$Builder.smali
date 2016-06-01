.class public Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/ui/CustomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentView:Landroid/view/View;

.field private dialogOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private dialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private isCancelable:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/oppo/tribune/ui/CustomAlertDialog;

.field private message:Ljava/lang/String;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->isCancelable:Z

    .line 58
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;)Lcom/oppo/tribune/ui/CustomAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mDialog:Lcom/oppo/tribune/ui/CustomAlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private setListeners(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->isCancelable:Z

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 311
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->dialogOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->dialogOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->dialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->dialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 317
    :cond_1
    return-void
.end method


# virtual methods
.method public create()Lcom/oppo/tribune/ui/CustomAlertDialog;
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, -0x1

    .line 151
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 154
    .local v3, "inflater":Landroid/view/LayoutInflater;
    new-instance v8, Lcom/oppo/tribune/ui/CustomAlertDialog;

    iget-object v9, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0123

    invoke-direct {v8, v9, v10}, Lcom/oppo/tribune/ui/CustomAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mDialog:Lcom/oppo/tribune/ui/CustomAlertDialog;

    .line 155
    const v8, 0x7f030024

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 156
    .local v4, "layout":Landroid/view/View;
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mDialog:Lcom/oppo/tribune/ui/CustomAlertDialog;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v4, v9}, Lcom/oppo/tribune/ui/CustomAlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    const v8, 0x7f0b00ee

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 161
    .local v7, "titleTv":Landroid/widget/TextView;
    const v8, 0x7f0b00ef

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 163
    .local v1, "contentHolder":Landroid/widget/LinearLayout;
    const v8, 0x7f0b00f0

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 165
    .local v5, "messageTv":Landroid/widget/TextView;
    const v8, 0x7f0b00f1

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 167
    .local v2, "footerLayout":Landroid/widget/LinearLayout;
    const v8, 0x7f0b00f2

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 168
    .local v6, "sureBtn":Landroid/widget/Button;
    const v8, 0x7f0b00f4

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 171
    .local v0, "cancelBtn":Landroid/widget/Button;
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 174
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v8, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$1;

    invoke-direct {v8, p0}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$1;-><init>(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :goto_0
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 190
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    new-instance v8, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$2;

    invoke-direct {v8, p0}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$2;-><init>(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :goto_1
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 207
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    :cond_0
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->message:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 211
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mDialog:Lcom/oppo/tribune/ui/CustomAlertDialog;

    invoke-virtual {v8, v4}, Lcom/oppo/tribune/ui/CustomAlertDialog;->setContentView(Landroid/view/View;)V

    .line 223
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mDialog:Lcom/oppo/tribune/ui/CustomAlertDialog;

    invoke-direct {p0, v8}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setListeners(Landroid/app/Dialog;)V

    .line 224
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mDialog:Lcom/oppo/tribune/ui/CustomAlertDialog;

    return-object v8

    .line 186
    :cond_2
    invoke-virtual {v6, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    const v8, 0x7f0b00f3

    invoke-static {v2, v8}, Lcom/oppo/tribune/util/Views;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 215
    :cond_4
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 216
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 217
    iget-object v8, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->contentView:Landroid/view/View;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setCancelable(Z)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->isCancelable:Z

    .line 101
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->contentView:Landroid/view/View;

    .line 91
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 5
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 274
    iget-object v2, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030025

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 280
    .local v1, "listview":Landroid/widget/ListView;
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    const v3, 0x7f030028

    iget-object v4, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 283
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setContentView(Landroid/view/View;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    .line 285
    new-instance v2, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$4;

    invoke-direct {v2, p0, p2}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$4;-><init>(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 293
    return-object p0
.end method

.method public setMessage(I)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "message"    # I

    .prologue
    .line 67
    iget-object v1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "str":Ljava/lang/String;
    iput-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->message:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->message:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 136
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 143
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->dialogOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 107
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->dialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 113
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 6
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v5, 0x1

    .line 239
    iget-object v2, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030025

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 245
    .local v1, "listview":Landroid/widget/ListView;
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    const v3, 0x7f030027

    iget-object v4, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 248
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 258
    invoke-virtual {v1, p2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 259
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setContentView(Landroid/view/View;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    .line 260
    new-instance v2, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$3;

    invoke-direct {v2, p0, v1, p3}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$3;-><init>(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;Landroid/widget/ListView;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 270
    return-object p0
.end method

.method public setTitle(I)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->title:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->title:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->contentView:Landroid/view/View;

    .line 96
    return-object p0
.end method

.method public show()Lcom/oppo/tribune/ui/CustomAlertDialog;
    .locals 3

    .prologue
    .line 297
    iget-object v2, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 298
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 299
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    const/4 v1, 0x0

    .line 306
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->create()Lcom/oppo/tribune/ui/CustomAlertDialog;

    move-result-object v1

    .line 305
    .local v1, "dialog":Lcom/oppo/tribune/ui/CustomAlertDialog;
    invoke-virtual {v1}, Lcom/oppo/tribune/ui/CustomAlertDialog;->show()V

    goto :goto_0
.end method
