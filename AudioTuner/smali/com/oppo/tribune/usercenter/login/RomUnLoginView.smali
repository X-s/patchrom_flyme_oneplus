.class public Lcom/oppo/tribune/usercenter/login/RomUnLoginView;
.super Landroid/widget/RelativeLayout;
.source "RomUnLoginView.java"


# instance fields
.field private mLoginBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1}, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;->initView(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030063

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    const v1, 0x7f0b01cd

    invoke-static {p0, v1}, Lcom/oppo/tribune/util/Views;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;->mLoginBtn:Landroid/widget/TextView;

    .line 33
    return-void
.end method


# virtual methods
.method public setLoginBtnClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;->setClickable(Z)V

    .line 41
    return-void
.end method

.method public setLoginBtnText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;->mLoginBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    return-void
.end method

.method public setLoginClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/usercenter/login/RomUnLoginView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
