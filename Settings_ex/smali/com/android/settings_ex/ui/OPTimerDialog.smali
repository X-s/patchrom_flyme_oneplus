.class public Lcom/android/settings_ex/ui/OPTimerDialog;
.super Ljava/lang/Object;
.source "OPTimerDialog.java"


# static fields
.field private static final TYPE_NEGATIVE:I = 0x2

.field private static final TYPE_POSITIVE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mNegativeCount:I

.field private mPositiveCount:I

.field private n:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private status:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;

    .line 20
    iput-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;

    .line 21
    iput v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mPositiveCount:I

    .line 22
    iput v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mNegativeCount:I

    .line 23
    iput-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->status:Z

    .line 134
    new-instance v0, Lcom/android/settings_ex/ui/OPTimerDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/OPTimerDialog$2;-><init>(Lcom/android/settings_ex/ui/OPTimerDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPTimerDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ui/OPTimerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPTimerDialog;

    .prologue
    .line 13
    iget v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/settings_ex/ui/OPTimerDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPTimerDialog;

    .prologue
    .line 13
    iget v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mNegativeCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPTimerDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPTimerDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ui/OPTimerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPTimerDialog;

    .prologue
    .line 13
    iget v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/android/settings_ex/ui/OPTimerDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPTimerDialog;

    .prologue
    .line 13
    iget v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mPositiveCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPTimerDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ui/OPTimerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPTimerDialog;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->status:Z

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPTimerDialog;->setStatus(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 89
    :cond_1
    return-void
.end method

.method public getNButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;

    .line 124
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
    .line 190
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-lez p2, :cond_1

    .line 192
    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 195
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

    .line 202
    .end local v0    # "index":I
    :goto_0
    return-object v1

    .line 197
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

    .line 202
    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 211
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

    .line 101
    if-gtz p2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    if-ne p1, v2, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    iput p2, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mPositiveCount:I

    goto :goto_0

    .line 111
    :cond_2
    if-ne p1, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iput p2, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mNegativeCount:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "count"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings_ex/ui/OPTimerDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings_ex/ui/OPTimerDialog$1;-><init>(Lcom/android/settings_ex/ui/OPTimerDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 75
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "count"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->status:Z

    .line 56
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 40
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPTimerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 50
    return-void
.end method
