.class public Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;
.super Landroid/support/v7/preference/Preference;
.source "OPNightModeLevelPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;
    }
.end annotation


# static fields
.field private static final SEEKBAR_MAX:I = 0x84


# instance fields
.field private mContext:Landroid/content/Context;

.field mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    .line 22
    const v0, 0x7f0400f1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setLayoutResource(I)V

    .line 19
    return-void
.end method

.method private initSeekBar(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 52
    const v1, 0x7f110228

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    .line 53
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 54
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 55
    const-string/jumbo v2, "oem_nightmode_progress_status"

    const/16 v3, 0x67

    const/4 v4, -0x2

    .line 54
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 56
    .local v0, "progress":I
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 57
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 0
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->initSeekBar(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 40
    return-void
.end method

.method public setOPNightModeLevelSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    .line 87
    return-void
.end method

.method public setSeekBarProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 45
    :cond_0
    return-void
.end method
