.class public Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
.super Landroid/support/v7/preference/Preference;
.source "OPPreferenceHeaderMargin.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->initViews(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->initViews(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->initViews(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->mContext:Landroid/content/Context;

    .line 40
    const v0, 0x7f0400f7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->setLayoutResource(I)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->setEnabled(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 45
    return-void
.end method
