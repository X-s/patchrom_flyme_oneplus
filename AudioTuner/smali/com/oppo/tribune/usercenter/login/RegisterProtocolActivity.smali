.class public Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;
.super Lcom/oppo/tribune/BaseActivity;
.source "RegisterProtocolActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/oppo/tribune/BaseActivity;-><init>()V

    return-void
.end method

.method private getTitleBarLeftClkLsn()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity$1;-><init>(Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;)V

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 35
    const v1, 0x7f0b0134

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/ui/CommunityHeadView;

    .line 36
    .local v0, "headView":Lcom/oppo/tribune/ui/CommunityHeadView;
    const v1, 0x7f0c00b6

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CommunityHeadView;->setCenterResource(I)V

    .line 37
    const v1, 0x7f0c0077

    const v2, 0x7f0201e0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/ui/CommunityHeadView;->setLeftDetail(II)V

    .line 38
    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;->getTitleBarLeftClkLsn()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CommunityHeadView;->setLeftClkLsn(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;->setProtocolText()V

    .line 41
    return-void
.end method

.method private setProtocolText()V
    .locals 2

    .prologue
    .line 57
    const v0, 0x7f0b01bf

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c031a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/oppo/tribune/BaseActivity;->onAttachedToWindow()V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/oppo/tribune/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/RegisterProtocolActivity;->init()V

    .line 32
    return-void
.end method
