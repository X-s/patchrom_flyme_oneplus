.class public Lcom/android/settings_ex/AppProgressPreference;
.super Lcom/android/settings_ex/TintablePreference;
.source "AppProgressPreference.java"


# instance fields
.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/TintablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const v0, 0x7f0400c4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AppProgressPreference;->setLayoutResource(I)V

    .line 30
    const v0, 0x7f04014b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AppProgressPreference;->setWidgetLayoutResource(I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/settings_ex/TintablePreference;->onBindView(Landroid/view/View;)V

    .line 42
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 43
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget v1, p0, Lcom/android/settings_ex/AppProgressPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 44
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/android/settings_ex/AppProgressPreference;->mProgress:I

    .line 35
    invoke-virtual {p0}, Lcom/android/settings_ex/AppProgressPreference;->notifyChanged()V

    .line 36
    return-void
.end method
