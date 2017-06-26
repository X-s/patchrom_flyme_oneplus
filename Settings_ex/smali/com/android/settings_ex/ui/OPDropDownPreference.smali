.class public Lcom/android/settings_ex/ui/OPDropDownPreference;
.super Landroid/preference/Preference;
.source "OPDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ui/OPDropDownPreference$Callback;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/settings_ex/ui/OPDropDownPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/ui/OPDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mValues:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 55
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/settings_ex/ui/OPDropDownPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ui/OPDropDownPreference$1;-><init>(Lcom/android/settings_ex/ui/OPDropDownPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPDropDownPreference;->setPersistent(Z)V

    .line 71
    new-instance v0, Lcom/android/settings_ex/ui/OPDropDownPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/OPDropDownPreference$2;-><init>(Lcom/android/settings_ex/ui/OPDropDownPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPDropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ui/OPDropDownPreference;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPDropDownPreference;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public addItem(ILjava/lang/Object;)V
    .locals 1
    .param p1, "captionResid"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/settings_ex/ui/OPDropDownPreference;->addItem(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public addItem(Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 1
    .param p1, "caption"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    .line 141
    check-cast v1, Landroid/view/ViewGroup;

    .line 142
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 143
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 144
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/settings_ex/ui/OPDropDownPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/ui/OPDropDownPreference$Callback;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mCallback:Lcom/android/settings_ex/ui/OPDropDownPreference$Callback;

    .line 86
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "dimenResId"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    .line 82
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/ui/OPDropDownPreference;->setSelectedItem(IZ)V

    .line 90
    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "doCall"    # Z

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 94
    .local v1, "value":Ljava/lang/Object;
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mCallback:Lcom/android/settings_ex/ui/OPDropDownPreference$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mCallback:Lcom/android/settings_ex/ui/OPDropDownPreference$Callback;

    invoke-interface {v2, p1, v1}, Lcom/android/settings_ex/ui/OPDropDownPreference$Callback;->onItemSelected(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 98
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ui/OPDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 100
    .local v0, "disableDependents":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPDropDownPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    .line 99
    .end local v0    # "disableDependents":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSelectedValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 113
    .local v0, "i":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPDropDownPreference;->setSelectedItem(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public setSelectedValue(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "doCall"    # Z

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 105
    .local v0, "i":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 106
    invoke-virtual {p0, v0, p2}, Lcom/android/settings_ex/ui/OPDropDownPreference;->setSelectedItem(IZ)V

    .line 108
    :cond_0
    return-void
.end method
