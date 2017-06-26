.class public Lcom/android/settings_ex/ui/OPPreferenceDivider;
.super Landroid/preference/PreferenceCategory;
.source "OPPreferenceDivider.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPPreferenceDivider;->initViews(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPPreferenceDivider;->initViews(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPPreferenceDivider;->initViews(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPPreferenceDivider;->mContext:Landroid/content/Context;

    .line 39
    const v0, 0x7f0400a9

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPPreferenceDivider;->setLayoutResource(I)V

    .line 41
    return-void
.end method
