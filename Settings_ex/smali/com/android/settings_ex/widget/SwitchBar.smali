.class public Lcom/android/settings_ex/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/SwitchBar$SavedState;,
        Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;
    }
.end annotation


# static fields
.field private static MARGIN_ATTRIBUTES:[I


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private final mSummarySpan:Landroid/text/style/TextAppearanceSpan;

.field private mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

.field private mSwitchChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/widget/SwitchBar;->MARGIN_ATTRIBUTES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010031
        0x7f010032
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040134

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    sget-object v3, Lcom/android/settings_ex/widget/SwitchBar;->MARGIN_ATTRIBUTES:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v2, v3

    .line 84
    .local v2, "switchBarMarginStart":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v1, v3

    .line 85
    .local v1, "switchBarMarginEnd":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    const v3, 0x7f120230

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0cd3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 89
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/android/settings_ex/widget/SwitchBar;->mContext:Landroid/content/Context;

    const v5, 0x7f0d005f

    invoke-direct {v3, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SwitchBar;->updateText()V

    .line 96
    const v3, 0x7f120231

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/widget/ToggleSwitch;

    iput-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 99
    iget-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 104
    new-instance v3, Lcom/android/settings_ex/widget/SwitchBar$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/widget/SwitchBar$1;-><init>(Lcom/android/settings_ex/widget/SwitchBar;)V

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 111
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 115
    return-void
.end method

.method private updateText()V
    .locals 5

    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 134
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 135
    .local v1, "start":I
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public final getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 197
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/widget/SwitchBar;->propagateChecked(Z)V

    .line 198
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 185
    .local v0, "isChecked":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 186
    return-void

    .line 184
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 270
    move-object v0, p1

    check-cast v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;

    .line 272
    .local v0, "ss":Lcom/android/settings_ex/widget/SwitchBar$SavedState;
    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 274
    iget-object v1, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    iget-boolean v2, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 275
    iget-boolean v1, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 276
    iget-boolean v1, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 277
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    iget-boolean v1, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_1

    move-object v1, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->requestLayout()V

    .line 280
    return-void

    .line 276
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 277
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 260
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 262
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 263
    .local v0, "ss":Lcom/android/settings_ex/widget/SwitchBar$SavedState;
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->checked:Z

    .line 264
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->isShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->visible:Z

    .line 265
    return-object v0
.end method

.method public propagateChecked(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 189
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 190
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setChecked(Z)V

    .line 143
    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 148
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setEnabled(Z)V

    .line 158
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSummary:Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SwitchBar;->updateText()V

    .line 126
    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0cd2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SwitchBar;->updateText()V

    .line 121
    return-void

    .line 118
    :cond_0
    const v0, 0x7f0c0cd3

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    :cond_0
    return-void
.end method
