.class public abstract Landroid/support/v7/preference/DialogPreference;
.super Landroid/support/v7/preference/Preference;
.source "DialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/DialogPreference$TargetFragment;
    }
.end annotation


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    sget v0, Landroid/support/v7/preference/R$attr;->dialogPreferenceStyle:I

    .line 94
    const v1, 0x1010091

    .line 93
    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    sget-object v1, Landroid/support/v7/preference/R$styleable;->DialogPreference:[I

    .line 56
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/preference/R$styleable;->DialogPreference_dialogTitle:I

    .line 60
    sget v2, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_dialogTitle:I

    .line 59
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 61
    iget-object v1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 67
    :cond_0
    sget v1, Landroid/support/v7/preference/R$styleable;->DialogPreference_dialogMessage:I

    .line 68
    sget v2, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_dialogMessage:I

    .line 67
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 70
    sget v1, Landroid/support/v7/preference/R$styleable;->DialogPreference_dialogIcon:I

    .line 71
    sget v2, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_dialogIcon:I

    .line 70
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    sget v1, Landroid/support/v7/preference/R$styleable;->DialogPreference_positiveButtonText:I

    .line 75
    sget v2, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_positiveButtonText:I

    .line 73
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 78
    sget v1, Landroid/support/v7/preference/R$styleable;->DialogPreference_negativeButtonText:I

    .line 79
    sget v2, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_negativeButtonText:I

    .line 77
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 82
    sget v1, Landroid/support/v7/preference/R$styleable;->DialogPreference_dialogLayout:I

    .line 83
    sget v2, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_dialogLayout:I

    const/4 v3, 0x0

    .line 81
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogLayoutResId:I

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method


# virtual methods
.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/support/v7/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->showDialog(Landroid/support/v7/preference/Preference;)V

    .line 261
    return-void
.end method

.method public setDialogIcon(I)V
    .locals 1
    .param p1, "dialogIconRes"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 171
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dialogIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 162
    iput-object p1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 161
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .prologue
    .line 247
    iput p1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogLayoutResId:I

    .line 246
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .param p1, "dialogMessageResId"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    iput-object p1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 136
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .param p1, "dialogTitleResId"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 107
    iput-object p1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 106
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "negativeButtonTextResId"    # I

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 218
    iput-object p1, p0, Landroid/support/v7/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 217
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "positiveButtonTextResId"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 190
    iput-object p1, p0, Landroid/support/v7/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 189
    return-void
.end method
