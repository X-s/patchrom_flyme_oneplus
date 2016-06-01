.class public Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "OnePlusReportMyHeadSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DELAY:I = 0x1f4


# instance fields
.field mBrandInput:Landroid/widget/EditText;

.field mModelInput:Landroid/widget/EditText;

.field mReportBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->mIsSlideMenuEnable:Z

    .line 47
    iput-object p0, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->mActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->mIsTitlebarMenuEnable:Z

    .line 53
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->mBrandInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->mModelInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-string v0, "Oops ~ not done yet!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 71
    :cond_0
    const-string v0, "need brand and model at the same time!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b017c
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c058a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->setContent(I)V

    .line 28
    const v0, 0x7f0b00f8

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->mBrandInput:Landroid/widget/EditText;

    .line 29
    const v0, 0x7f0b017b

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->mModelInput:Landroid/widget/EditText;

    .line 30
    const v0, 0x7f0b017c

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->mReportBtn:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->mReportBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity$1;-><init>(Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    return-void
.end method
