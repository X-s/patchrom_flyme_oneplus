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
.field private mContext:Landroid/content/Context;

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
    .line 66
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
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/widget/SwitchBar;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040126

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    sget-object v4, Lcom/android/settings_ex/widget/SwitchBar;->MARGIN_ATTRIBUTES:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v3, v4

    .line 88
    .local v3, "switchBarMarginStart":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v2, v4

    .line 89
    .local v2, "switchBarMarginEnd":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    const v4, 0x7f120206

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0ca5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 93
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    iget-object v5, p0, Lcom/android/settings_ex/widget/SwitchBar;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0060

    invoke-direct {v4, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    .line 94
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SwitchBar;->updateText()V

    .line 95
    iget-object v4, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 96
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 98
    const v4, 0x7f120207

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/widget/ToggleSwitch;

    iput-object v4, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 101
    iget-object v4, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v4, v7}, Lcom/android/settings_ex/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 102
    iget-object v4, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    .restart local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 105
    new-instance v4, Lcom/android/settings_ex/widget/SwitchBar$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/widget/SwitchBar$1;-><init>(Lcom/android/settings_ex/widget/SwitchBar;)V

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 112
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 117
    iget-object v4, p0, Lcom/android/settings_ex/widget/SwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    const v4, 0x7f02013c

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setBackgroundResource(I)V

    .line 121
    :cond_0
    return-void
.end method

.method private updateText()V
    .locals 5

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 140
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 141
    .local v1, "start":I
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 143
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public final getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 182
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 185
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
    .line 203
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/widget/SwitchBar;->propagateChecked(Z)V

    .line 204
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 191
    .local v0, "isChecked":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 192
    return-void

    .line 190
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 276
    move-object v0, p1

    check-cast v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;

    .line 278
    .local v0, "ss":Lcom/android/settings_ex/widget/SwitchBar$SavedState;
    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 280
    iget-object v1, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    iget-boolean v2, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 281
    iget-boolean v1, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 282
    iget-boolean v1, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    iget-boolean v1, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_1

    move-object v1, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->requestLayout()V

    .line 286
    return-void

    .line 282
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 283
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 266
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 268
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 269
    .local v0, "ss":Lcom/android/settings_ex/widget/SwitchBar$SavedState;
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->checked:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->isShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/widget/SwitchBar$SavedState;->visible:Z

    .line 271
    return-object v0
.end method

.method public propagateChecked(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 196
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setChecked(Z)V

    .line 149
    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 154
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setEnabled(Z)V

    .line 164
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSummary:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SwitchBar;->updateText()V

    .line 132
    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0ca4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SwitchBar;->updateText()V

    .line 127
    return-void

    .line 124
    :cond_0
    const v0, 0x7f0c0ca5

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar;->mSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    :cond_0
    return-void
.end method
