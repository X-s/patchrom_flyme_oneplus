.class public final Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;
.super Landroid/app/Fragment;
.source "AdvancedSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WatermarkFragment"
.end annotation


# instance fields
.field private m_BottomDivider:Landroid/view/View;

.field private m_MenuContainer:Landroid/view/View;

.field private m_NameEditText:Landroid/widget/EditText;

.field private m_NameHintText:Landroid/widget/TextView;

.field private m_NameItemContainer:Landroid/view/View;

.field private m_NameSwitch:Landroid/widget/Switch;

.field private m_NameTitle:Landroid/widget/TextView;

.field private m_SloganDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

.field private m_SloganView:Landroid/view/View;

.field private m_WatermarkItemContainer:Landroid/view/View;

.field private m_WatermarkSwitch:Landroid/widget/Switch;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->hideEditTextKeyboard()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->onNameSwitchChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->onNameTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->onWatermarkSwitchChanged()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private hideEditTextKeyboard()V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 394
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 397
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 390
    :cond_0
    return-void
.end method

.method private onNameSwitchChanged()V
    .locals 4

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateSloganDrawable()V

    .line 566
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextVisibility()V

    .line 569
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextEnableState()V

    .line 572
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 573
    .local v0, "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Watermark.Slogan.Author.Enabled"

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    return-void
.end method

.method private onNameTextChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateSloganDrawable()V

    .line 584
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextVisibility()V

    .line 587
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 588
    .local v0, "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Watermark.Slogan.Author"

    invoke-virtual {v1, v2, p1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 578
    return-void
.end method

.method private onWatermarkSwitchChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 610
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateSloganDrawable()V

    .line 617
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateNameItemEnableState()V

    .line 620
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextEnableState()V

    .line 623
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 624
    .local v0, "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Watermark"

    sget-object v3, Lcom/oneplus/camera/watermark/Watermark;->SLOGAN:Lcom/oneplus/camera/watermark/Watermark;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    :goto_0
    return-void

    .line 627
    :cond_1
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Watermark"

    sget-object v3, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateEditTextEnableState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 634
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 637
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 632
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 642
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateEditTextVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 650
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_BottomDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 648
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_BottomDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_BottomDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateNameItemEnableState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 676
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameItemContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 679
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 680
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 674
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameItemContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 685
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 686
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateSloganDrawable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 694
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->setSubtitleText(Ljava/lang/String;)V

    .line 704
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganView:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 692
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return-void

    .line 701
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->setSubtitleText(Ljava/lang/String;)V

    goto :goto_0

    .line 709
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public isEditTextEmpty()Z
    .locals 2

    .prologue
    .line 405
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "trimmedEditText":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const/4 v1, 0x1

    return v1

    .line 408
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 417
    const v0, 0x7f030005

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 418
    .local v8, "baseLayout":Landroid/view/View;
    const v0, 0x7f09001e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganView:Landroid/view/View;

    .line 419
    const v0, 0x7f09001f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    .line 420
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkItemContainer:Landroid/view/View;

    .line 421
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    .line 422
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameItemContainer:Landroid/view/View;

    .line 423
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameTitle:Landroid/widget/TextView;

    .line 424
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    .line 425
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameHintText:Landroid/widget/TextView;

    .line 426
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    .line 427
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_BottomDivider:Landroid/view/View;

    .line 430
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-direct {v0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 433
    .local v7, "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    invoke-static {v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "Watermark"

    const-class v3, Lcom/oneplus/camera/watermark/Watermark;

    sget-object v4, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    invoke-virtual {v0, v1, v3, v4}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/watermark/Watermark;

    .line 434
    .local v2, "watermark":Lcom/oneplus/camera/watermark/Watermark;
    invoke-static {v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "Watermark.Slogan.Author.Enabled"

    invoke-virtual {v0, v1, v10}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 435
    .local v9, "isSloganAuthorEnabled":Z
    invoke-static {v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "Watermark.Slogan.Author"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 437
    .local v6, "sloganAuthor":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCreateView() - Watermark: "

    const-string/jumbo v3, ", author enabled: "

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, ", author: "

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 440
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    sget-object v0, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    if-eq v2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 441
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 442
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 443
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateSloganDrawable()V

    .line 444
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateNameItemEnableState()V

    .line 445
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextVisibility()V

    .line 446
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextEnableState()V

    .line 449
    new-instance v0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$1;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameItemContainer:Landroid/view/View;

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$2;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkItemContainer:Landroid/view/View;

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$3;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$3;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$4;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$4;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 489
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$5;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$5;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 499
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$6;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$6;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 519
    instance-of v0, v7, Lcom/oneplus/camera/OnActionBarTitleChangedListener;

    if-eqz v0, :cond_1

    .line 520
    const v0, 0x7f0b000d

    invoke-interface {v7, v0}, Lcom/oneplus/camera/OnActionBarTitleChangedListener;->onTitleChanged(I)V

    .line 523
    :cond_1
    invoke-virtual {v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$7;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$7;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    .line 534
    const-wide/16 v4, 0x64

    .line 523
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 537
    return-object v8

    :cond_2
    move v0, v10

    .line 440
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 546
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "trimmedEditText":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 550
    .local v0, "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v2

    const-string/jumbo v3, "Watermark.Slogan.Author.Enabled"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v2

    const-string/jumbo v3, "Watermark.Slogan.Author"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    .end local v0    # "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 543
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 597
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 600
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 601
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    if-eqz v1, :cond_0

    .line 602
    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap3(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    .line 594
    :cond_0
    return-void
.end method
