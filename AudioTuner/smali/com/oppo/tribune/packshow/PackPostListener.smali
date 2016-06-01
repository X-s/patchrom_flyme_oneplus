.class public Lcom/oppo/tribune/packshow/PackPostListener;
.super Ljava/lang/Object;
.source "PackPostListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/oppo/tribune/packshow/PackPostListener;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/oppo/tribune/packshow/PackPostListener;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private showChooseDialog()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/oppo/tribune/packshow/PackPostListener;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0123

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    .local v0, "dialog":Landroid/app/Dialog;
    iget-object v2, p0, Lcom/oppo/tribune/packshow/PackPostListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "dialogView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 53
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 55
    const v2, 0x7f0b01a1

    invoke-static {v1, v2}, Lcom/oppo/tribune/util/Views;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/oppo/tribune/packshow/PackPostListener$1;

    invoke-direct {v3, p0, v0}, Lcom/oppo/tribune/packshow/PackPostListener$1;-><init>(Lcom/oppo/tribune/packshow/PackPostListener;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f0b01a2

    invoke-static {v1, v2}, Lcom/oppo/tribune/util/Views;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/oppo/tribune/packshow/PackPostListener$2;

    invoke-direct {v3, p0, v0}, Lcom/oppo/tribune/packshow/PackPostListener$2;-><init>(Lcom/oppo/tribune/packshow/PackPostListener;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v2, 0x7f0b01a3

    invoke-static {v1, v2}, Lcom/oppo/tribune/util/Views;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/oppo/tribune/packshow/PackPostListener$3;

    invoke-direct {v3, p0, v0}, Lcom/oppo/tribune/packshow/PackPostListener$3;-><init>(Lcom/oppo/tribune/packshow/PackPostListener;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/tribune/packshow/PackPostListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/LoginUtils;->isLoginStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/oppo/tribune/packshow/PackPostListener;->showChooseDialog()V

    .line 45
    :cond_0
    return-void
.end method
