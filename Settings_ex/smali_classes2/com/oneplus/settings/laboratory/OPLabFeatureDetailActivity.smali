.class public Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;
.super Landroid/app/Activity;
.source "OPLabFeatureDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ONEPLUS_LAB_FEATURE_DISLIKE:I = -0x1

.field private static final ONEPLUS_LAB_FEATURE_KEY:Ljava/lang/String; = "oneplus_lab_feature_key"

.field private static final ONEPLUS_LAB_FEATURE_LIKE:I = 0x1

.field private static final ONEPLUS_LAB_FEATURE_SUMMARY:Ljava/lang/String; = "oneplus_lab_feature_Summary"

.field private static final ONEPLUS_LAB_FEATURE_TITLE:Ljava/lang/String; = "oneplus_lab_feature_title"

.field private static final SHOW_IMPORTANCE_SLIDER:Ljava/lang/String; = "show_importance_slider"


# instance fields
.field private mActiviteFeatureToggle:Landroid/view/View;

.field private mCommunirySummary:Landroid/widget/TextView;

.field private mCommuniryTitle:Landroid/widget/TextView;

.field private mDescriptionSummary:Landroid/widget/TextView;

.field private mDescriptionTitle:Landroid/widget/TextView;

.field private mDislikeImageButton:Landroid/widget/ImageButton;

.field private mIntent:Landroid/content/Intent;

.field private mLikeImageButton:Landroid/widget/ImageButton;

.field private mOneplusLabFeatureKey:Ljava/lang/String;

.field private mOneplusLabFeatureTitle:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private highlightUserChoose(I)V
    .locals 4
    .param p1, "likeOrDislike"    # I

    .prologue
    const v3, 0x7f0b039b

    const v2, 0x7f0b039c

    .line 142
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 141
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method

.method private initIntent()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "oneplus_lab_feature_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "oneplus_lab_feature_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    const v1, 0x7f110215

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionTitle:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f110216

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionSummary:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f110217

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mCommuniryTitle:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f110218

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mCommunirySummary:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f110213

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    .line 63
    const v1, 0x7f110214

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    .line 64
    const-string/jumbo v1, "show_importance_slider"

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v5, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 69
    :goto_1
    const v1, 0x7f110219

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    .line 70
    const v1, 0x7f11021a

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    .line 71
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "oneplus_lab_feature_Summary"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "oneplusLabFeatureSummary":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setLikeOrDislike()V

    .line 56
    return-void

    .end local v0    # "oneplusLabFeatureSummary":Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private saveActitiveHistory(I)V
    .locals 3
    .param p1, "likeOrDislike"    # I

    .prologue
    .line 120
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 122
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setLikeOrDislike()V

    .line 119
    return-void
.end method

.method private setLikeOrDislike()V
    .locals 5

    .prologue
    const v3, 0x7f0b039c

    const/4 v4, 0x0

    .line 130
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "likeOrDislike":I
    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->highlightUserChoose(I)V

    .line 133
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 129
    .end local v0    # "likeOrDislike":I
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 137
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 96
    :sswitch_0
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 102
    .local v0, "isChecked":I
    :goto_2
    const-string/jumbo v1, "show_importance_slider"

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 99
    .end local v0    # "isChecked":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 101
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isChecked":I
    goto :goto_2

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 109
    .end local v0    # "isChecked":I
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->saveActitiveHistory(I)V

    goto :goto_0

    .line 112
    :sswitch_2
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->saveActitiveHistory(I)V

    goto :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x7f110213 -> :sswitch_0
        0x7f110219 -> :sswitch_1
        0x7f11021a -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0400e6

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->initIntent()V

    .line 46
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->initView()V

    .line 42
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->finish()V

    .line 84
    const/4 v0, 0x1

    return v0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
