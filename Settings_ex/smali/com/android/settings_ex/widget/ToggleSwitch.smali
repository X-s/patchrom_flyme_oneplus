.class public Lcom/android/settings_ex/widget/ToggleSwitch;
.super Lcom/oneplus/widget/button/OPSwitch;
.source "ToggleSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oneplus/widget/button/OPSwitch;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/button/OPSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/widget/button/OPSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/button/OPSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/widget/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings_ex/widget/ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/widget/button/OPSwitch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/oneplus/widget/button/OPSwitch;->setChecked(Z)V

    .line 68
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/widget/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 55
    return-void
.end method
