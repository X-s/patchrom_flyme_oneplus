.class public Lcom/oneplus/settings/ui/OPTimerDialog;
.super Ljava/lang/Object;
.source "OPTimerDialog.java"


# static fields
.field private static final TYPE_NEGATIVE:I = 0x2

.field private static final TYPE_POSITIVE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/oneplus/app/OPAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mNegativeCount:I

.field private mPositiveCount:I

.field private n:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private status:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    .line 21
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    .line 22
    iput v2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    .line 23
    iput v2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    .line 24
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    .line 137
    new-instance v0, Lcom/oneplus/settings/ui/OPTimerDialog$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPTimerDialog$2;-><init>(Lcom/oneplus/settings/ui/OPTimerDialog;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    .line 32
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPTimerDialog;)Lcom/oneplus/app/OPAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    .line 14
    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$110(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    .line 14
    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    .line 14
    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    .line 14
    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/ui/OPTimerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->setStatus(Z)V

    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog;->dismiss()V

    .line 92
    :cond_1
    return-void
.end method

.method public getNButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 192
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-lez p2, :cond_1

    .line 194
    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 196
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .end local v0    # "index":I
    :goto_0
    return-object v1

    .line 199
    .restart local v0    # "index":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0    # "index":I
    :cond_1
    move-object v1, p1

    .line 204
    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog;->isShowing()Z

    move-result v0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButtonType(IIZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "count"    # I
    .param p3, "isDisable"    # Z

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 104
    if-gtz p2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    if-ne p1, v2, :cond_2

    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    iput p2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    goto :goto_0

    .line 114
    :cond_2
    if-ne p1, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    iput p2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/app/OPAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "count"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/oneplus/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    new-instance v1, Lcom/oneplus/settings/ui/OPTimerDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/settings/ui/OPTimerDialog$1;-><init>(Lcom/oneplus/settings/ui/OPTimerDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 78
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "count"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/oneplus/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    .line 57
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/app/OPAlertDialog;->setTitle(I)V

    .line 41
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/app/OPAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 51
    return-void
.end method
