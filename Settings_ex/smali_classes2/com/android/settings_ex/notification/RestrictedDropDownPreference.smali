.class public Lcom/android/settings_ex/notification/RestrictedDropDownPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "RestrictedDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/RestrictedDropDownPreference$1;,
        Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;,
        Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;,
        Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    }
.end annotation


# instance fields
.field private final mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mRestrictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;

.field private mUserClicked:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;)Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mSpinner:Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mUserClicked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mUserClicked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "entry"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->isRestrictedForEntry(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->isUserClicked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;Ljava/lang/CharSequence;)Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    .locals 1
    .param p1, "entryValue"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;I)Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->getRestrictedItemForPosition(I)Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;Z)V
    .locals 0
    .param p1, "userClicked"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setUserClicked(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mRestrictedItems:Ljava/util/List;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mUserClicked:Z

    .line 166
    new-instance v0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$1;-><init>(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 49
    const v0, 0x7f040174

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setLayoutResource(I)V

    .line 50
    const v0, 0x7f040172

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->setWidgetLayoutResource(I)V

    .line 51
    new-instance v0, Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    .line 47
    return-void
.end method

.method private getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    .locals 4
    .param p1, "entryValue"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 93
    if-nez p1, :cond_0

    .line 94
    return-object v3

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;

    .line 97
    .local v0, "item":Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    iget-object v2, v0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    return-object v0

    .line 101
    .end local v0    # "item":Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    :cond_2
    return-object v3
.end method

.method private getRestrictedItemForPosition(I)Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 105
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 106
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, p1

    .line 109
    .local v0, "entryValue":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;

    move-result-object v1

    return-object v1
.end method

.method private isRestrictedForEntry(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "entry"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 82
    return v3

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;

    .line 85
    .local v0, "item":Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    iget-object v2, v0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const/4 v2, 0x1

    return v2

    .line 89
    .end local v0    # "item":Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    :cond_2
    return v3
.end method

.method private isUserClicked()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mUserClicked:Z

    return v0
.end method

.method private setUserClicked(Z)V
    .locals 0
    .param p1, "userClicked"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mUserClicked:Z

    .line 158
    return-void
.end method


# virtual methods
.method public addRestrictedItem(Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public clearRestrictedItems()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    return-void
.end method

.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;-><init>(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;Landroid/content/Context;)V

    return-object v0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 69
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f1101a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;

    iput-object v1, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mSpinner:Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mSpinner:Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;->setPreference(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;)V

    .line 71
    invoke-super {p0, p1}, Landroid/support/v7/preference/DropDownPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-virtual {v1, p1}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mSpinner:Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;

    iget-object v2, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 74
    const v1, 0x7f1102c4

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "restrictedIcon":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->isDisabledByAdmin()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_0
    return-void

    .line 76
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public performClick()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mPreClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mPreClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mUserClicked:Z

    .line 127
    invoke-super {p0}, Landroid/support/v7/preference/DropDownPreference;->performClick()V

    .line 121
    :cond_1
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->notifyChanged()V

    .line 140
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 133
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 135
    return-void

    .line 137
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    .line 132
    return-void
.end method

.method public setOnPreClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->mPreClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 150
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 60
    return-void
.end method
