.class Lcom/oneplus/tuner/MixerActivity$7;
.super Ljava/lang/Object;
.source "MixerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MixerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MixerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MixerActivity;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 580
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/MixerActivity;->mEqPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/MixerActivity;->mMoreSettingPanel:Lcom/oneplus/tuner/view/CustomConfigScrollView;

    invoke-virtual {v0, v3}, Lcom/oneplus/tuner/view/CustomConfigScrollView;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/MixerActivity;->mEqStatus:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v1}, Lcom/oneplus/tuner/MixerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 584
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/MixerActivity;->mMoreSettingStatus:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v1}, Lcom/oneplus/tuner/MixerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 586
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iput-boolean v3, v0, Lcom/oneplus/tuner/MixerActivity;->mEqSetting:Z

    .line 588
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/MixerActivity;->mEqButton:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 590
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/MixerActivity;->mEqButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v1}, Lcom/oneplus/tuner/MixerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 592
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/MixerActivity;->mMoreSettingButton:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 594
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/MixerActivity;->mMoreSettingButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity$7;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v1}, Lcom/oneplus/tuner/MixerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 597
    return-void
.end method
