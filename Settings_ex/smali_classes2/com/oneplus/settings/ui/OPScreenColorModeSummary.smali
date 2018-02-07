.class public Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
.super Lcom/android/settings_exlib/RestrictedPreference;
.source "OPScreenColorModeSummary.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mContext:Landroid/content/Context;

    .line 24
    const v0, 0x7f040109

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setLayoutResource(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings_exlib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 42
    const v2, 0x7f1100e5

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    .line 43
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "night_display_activated"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_2

    const/4 v0, 0x1

    .line 44
    .local v0, "nightmodeenabled":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "reading_mode_status_manual"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_3

    const/4 v1, 0x1

    .line 45
    .local v1, "readingmodeenabled":Z
    :goto_1
    if-nez v0, :cond_0

    .line 46
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v4, 0x7f0e026f

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    if-nez v1, :cond_1

    .line 49
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v4, 0x7f0e03a3

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_1
    return-void

    .line 43
    .end local v0    # "nightmodeenabled":Z
    .end local v1    # "readingmodeenabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "nightmodeenabled":Z
    goto :goto_0

    .line 44
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "readingmodeenabled":Z
    goto :goto_1
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setTextSummary(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setTextSummary(Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->notifyChanged()V

    .line 53
    return-void
.end method
