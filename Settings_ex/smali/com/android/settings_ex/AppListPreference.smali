.class public Lcom/android/settings_ex/AppListPreference;
.super Landroid/preference/ListPreference;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/AppListPreference$SavedState;,
        Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;
    }
.end annotation


# static fields
.field public static final ITEM_NONE_VALUE:Ljava/lang/String; = ""


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field private mShowItemNone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    .line 82
    return-void
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 9

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "selectedValue":Ljava/lang/String;
    if-eqz v8, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 138
    .local v7, "selectedNone":Z
    :goto_0
    if-eqz v7, :cond_2

    const/4 v6, -0x1

    .line 139
    .local v6, "selectedIndex":I
    :goto_1
    new-instance v0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040010

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;-><init>(Lcom/android/settings_ex/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    return-object v0

    .line 136
    .end local v6    # "selectedIndex":I
    .end local v7    # "selectedNone":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 138
    .restart local v7    # "selectedNone":Z
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 147
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 157
    instance-of v1, p1, Lcom/android/settings_ex/AppListPreference$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 158
    check-cast v0, Lcom/android/settings_ex/AppListPreference$SavedState;

    .line 159
    .local v0, "savedState":Lcom/android/settings_ex/AppListPreference$SavedState;
    iget-boolean v1, v0, Lcom/android/settings_ex/AppListPreference$SavedState;->showItemNone:Z

    iput-boolean v1, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    .line 160
    iget-object v1, v0, Lcom/android/settings_ex/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/android/settings_ex/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, v0, Lcom/android/settings_ex/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 165
    .end local v0    # "savedState":Lcom/android/settings_ex/AppListPreference$SavedState;
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 151
    invoke-super {p0}, Landroid/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 152
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/settings_ex/AppListPreference$SavedState;

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settings_ex/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object v1
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .param p1, "packageNames"    # [Ljava/lang/CharSequence;
    .param p2, "defaultPackageName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 95
    .local v5, "pm":Landroid/content/pm/PackageManager;
    array-length v9, p1

    iget-boolean v10, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    if-eqz v10, :cond_0

    const/4 v8, 0x1

    :cond_0
    add-int v2, v9, v8

    .line 96
    .local v2, "entryCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v1, "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v7, "validatedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .local v3, "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    const/4 v6, -0x1

    .line 100
    .local v6, "selectedIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p1

    if-ge v4, v8, :cond_2

    .line 102
    :try_start_0
    aget-object v8, p1, v4

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 103
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    if-eqz p2, :cond_1

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 108
    move v6, v4

    .line 100
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    :cond_2
    iget-boolean v8, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    if-eqz v8, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0d58

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v8, ""

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020084

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 123
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 125
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/android/settings_ex/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 127
    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    .line 128
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/AppListPreference;->setValueIndex(I)V

    .line 132
    :goto_2
    return-void

    .line 130
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 110
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public setShowItemNone(Z)V
    .locals 0
    .param p1, "showItemNone"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    .line 90
    return-void
.end method
