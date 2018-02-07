.class public Lcom/oneplus/settings/ui/OPPreferenceDivider2;
.super Landroid/preference/PreferenceCategory;
.source "OPPreferenceDivider2.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPreferenceDivider2;->initViews(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPreferenceDivider2;->initViews(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPreferenceDivider2;->initViews(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const v0, 0x7f0400f5

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPreferenceDivider2;->setLayoutResource(I)V

    .line 29
    return-void
.end method
