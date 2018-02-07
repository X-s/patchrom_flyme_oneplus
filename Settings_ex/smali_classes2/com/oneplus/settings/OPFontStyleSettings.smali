.class public Lcom/oneplus/settings/OPFontStyleSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPFontStyleSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPFontStyleSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private mSlateFont:Landroid/view/View;

.field private mSlateFontButton:Landroid/widget/RadioButton;

.field private mSystemFont:Landroid/view/View;

.field private mSystemFontButton:Landroid/widget/RadioButton;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/oneplus/settings/OPFontStyleSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPFontStyleSettings$1;-><init>()V

    .line 110
    sput-object v0, Lcom/oneplus/settings/OPFontStyleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setFontStyle(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 84
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/OPFontStyleSettings$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/OPFontStyleSettings$2;-><init>(Lcom/oneplus/settings/OPFontStyleSettings;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x270f

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f110202

    if-ne v1, v2, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_font_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, "value":I
    if-ne v0, v3, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-direct {p0, v3}, Lcom/oneplus/settings/OPFontStyleSettings;->setFontStyle(I)V

    .line 72
    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 73
    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 66
    .end local v0    # "value":I
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f110205

    if-ne v1, v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_font_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 76
    .restart local v0    # "value":I
    if-ne v0, v5, :cond_3

    return-void

    .line 77
    :cond_3
    invoke-direct {p0, v5}, Lcom/oneplus/settings/OPFontStyleSettings;->setFontStyle(I)V

    .line 78
    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 37
    .local v2, "root":Landroid/view/View;
    const v3, 0x102003f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 38
    .local v1, "listContainer":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 40
    const v3, 0x7f0400e0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    const v3, 0x7f110204

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    .line 43
    const v3, 0x7f110207

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    .line 44
    const v3, 0x7f110202

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFont:Landroid/view/View;

    .line 45
    const v3, 0x7f110205

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFont:Landroid/view/View;

    .line 48
    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFont:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFont:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-object v2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 58
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "oem_font_mode"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, "value":I
    iget-object v4, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSystemFontButton:Landroid/widget/RadioButton;

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 61
    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleSettings;->mSlateFontButton:Landroid/widget/RadioButton;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 56
    return-void

    :cond_0
    move v1, v3

    .line 60
    goto :goto_0

    :cond_1
    move v2, v3

    .line 61
    goto :goto_1
.end method
