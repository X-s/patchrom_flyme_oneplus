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
    .line 536
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private hideEditTextKeyboard()V
    .locals 3

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 545
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 548
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 541
    :cond_0
    return-void
.end method

.method private onNameSwitchChanged()V
    .locals 4

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateSloganDrawable()V

    .line 717
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextVisibility()V

    .line 720
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextEnableState()V

    .line 723
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 724
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

    .line 711
    return-void
.end method

.method private onNameTextChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateSloganDrawable()V

    .line 735
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextVisibility()V

    .line 738
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 739
    .local v0, "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Watermark.Slogan.Author"

    invoke-virtual {v1, v2, p1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 729
    return-void
.end method

.method private onWatermarkSwitchChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 761
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

    .line 762
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 765
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateSloganDrawable()V

    .line 768
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateNameItemEnableState()V

    .line 771
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextEnableState()V

    .line 774
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 775
    .local v0, "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Watermark"

    sget-object v3, Lcom/oneplus/camera/watermark/Watermark;->SLOGAN:Lcom/oneplus/camera/watermark/Watermark;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 758
    :goto_0
    return-void

    .line 778
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

    .line 785
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 788
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 783
    :goto_0
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 793
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateEditTextVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 801
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_BottomDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 799
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 813
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_BottomDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_BottomDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateNameItemEnableState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 827
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameItemContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 830
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 831
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 825
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameItemContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 836
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 837
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateSloganDrawable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 845
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->setSubtitleText(Ljava/lang/String;)V

    .line 855
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganView:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 843
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return-void

    .line 852
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->setSubtitleText(Ljava/lang/String;)V

    goto :goto_0

    .line 860
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
    .line 556
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "trimmedEditText":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    const/4 v1, 0x1

    return v1

    .line 559
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

    .line 568
    const v0, 0x7f030006

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 569
    .local v8, "baseLayout":Landroid/view/View;
    const v0, 0x7f0a0021

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganView:Landroid/view/View;

    .line 570
    const v0, 0x7f0a0022

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    .line 571
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkItemContainer:Landroid/view/View;

    .line 572
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    .line 573
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameItemContainer:Landroid/view/View;

    .line 574
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameTitle:Landroid/widget/TextView;

    .line 575
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    .line 576
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameHintText:Landroid/widget/TextView;

    .line 577
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    .line 578
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_MenuContainer:Landroid/view/View;

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_BottomDivider:Landroid/view/View;

    .line 581
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-direct {v0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_SloganDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 584
    .local v7, "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    invoke-static {v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "Watermark"

    const-class v3, Lcom/oneplus/camera/watermark/Watermark;

    sget-object v4, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    invoke-virtual {v0, v1, v3, v4}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/watermark/Watermark;

    .line 585
    .local v2, "watermark":Lcom/oneplus/camera/watermark/Watermark;
    invoke-static {v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "Watermark.Slogan.Author.Enabled"

    invoke-virtual {v0, v1, v10}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 586
    .local v9, "isSloganAuthorEnabled":Z
    invoke-static {v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "Watermark.Slogan.Author"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 588
    .local v6, "sloganAuthor":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCreateView() - Watermark: "

    const-string/jumbo v3, ", author enabled: "

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, ", author: "

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 591
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    sget-object v0, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    if-eq v2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 592
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 593
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 594
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateSloganDrawable()V

    .line 595
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateNameItemEnableState()V

    .line 596
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextVisibility()V

    .line 597
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->updateEditTextEnableState()V

    .line 600
    new-instance v0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$1;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 614
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameItemContainer:Landroid/view/View;

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$2;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkItemContainer:Landroid/view/View;

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$3;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$3;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_WatermarkSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$4;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$4;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 640
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$5;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$5;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 650
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$6;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$6;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 670
    instance-of v0, v7, Lcom/oneplus/camera/OnActionBarTitleChangedListener;

    if-eqz v0, :cond_1

    .line 671
    const v0, 0x7f0d0028

    invoke-interface {v7, v0}, Lcom/oneplus/camera/OnActionBarTitleChangedListener;->onTitleChanged(I)V

    .line 674
    :cond_1
    invoke-virtual {v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$7;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$7;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    .line 685
    const-wide/16 v4, 0x64

    .line 674
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 688
    return-object v8

    :cond_2
    move v0, v10

    .line 591
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 697
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "trimmedEditText":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->m_NameSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 701
    .local v0, "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v2

    const-string/jumbo v3, "Watermark.Slogan.Author.Enabled"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;

    move-result-object v2

    const-string/jumbo v3, "Watermark.Slogan.Author"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 706
    .end local v0    # "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 694
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 751
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 752
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    if-eqz v1, :cond_0

    .line 753
    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap4(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    .line 745
    :cond_0
    return-void
.end method
