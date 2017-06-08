.class public Lcom/android/settings_ex/CancellablePreference;
.super Landroid/preference/Preference;
.source "CancellablePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CancellablePreference$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancellable:Z

.field private mListener:Lcom/android/settings_ex/CancellablePreference$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 32
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CancellablePreference;->setWidgetLayoutResource(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CancellablePreference;->setWidgetLayoutResource(I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 53
    const v1, 0x7f120052

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .local v0, "cancel":Landroid/widget/ImageView;
    iget-boolean v1, p0, Lcom/android/settings_ex/CancellablePreference;->mCancellable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void

    .line 54
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/CancellablePreference;->mListener:Lcom/android/settings_ex/CancellablePreference$OnCancelListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/CancellablePreference;->mListener:Lcom/android/settings_ex/CancellablePreference$OnCancelListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/CancellablePreference$OnCancelListener;->onCancel(Lcom/android/settings_ex/CancellablePreference;)V

    .line 63
    :cond_0
    return-void
.end method

.method public setCancellable(Z)V
    .locals 0
    .param p1, "isCancellable"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings_ex/CancellablePreference;->mCancellable:Z

    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/CancellablePreference;->notifyChanged()V

    .line 43
    return-void
.end method

.method public setOnCancelListener(Lcom/android/settings_ex/CancellablePreference$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/CancellablePreference$OnCancelListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings_ex/CancellablePreference;->mListener:Lcom/android/settings_ex/CancellablePreference$OnCancelListener;

    .line 47
    return-void
.end method
