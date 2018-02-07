.class public Lcom/android/settings_ex/AppListPreference;
.super Lcom/android/settings_ex/CustomListPreference;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;,
        Lcom/android/settings_ex/AppListPreference$SavedState;
    }
.end annotation


# static fields
.field public static final ITEM_NONE_VALUE:Ljava/lang/String; = ""

.field public static final TYPE_COMPONENT:I = 0x1

.field public static final TYPE_PACKAGE:I


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field protected final mForWork:Z

.field private mShowItemNone:Z

.field private mSummaries:[Ljava/lang/CharSequence;

.field private mSystemAppIndex:I

.field private mType:I

.field protected final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/AppListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/AppListPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/AppListPreference;->mSystemAppIndex:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-boolean v3, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    .line 65
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings_ex/AppListPreference;->mSystemAppIndex:I

    .line 66
    iput v3, p0, Lcom/android/settings_ex/AppListPreference;->mType:I

    .line 125
    sget-object v2, Lcom/android/settings_ex/R$styleable;->WorkPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/AppListPreference;->mForWork:Z

    .line 127
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    .line 128
    .local v1, "managedProfile":Landroid/os/UserHandle;
    iget-boolean v2, p0, Lcom/android/settings_ex/AppListPreference;->mForWork:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/settings_ex/AppListPreference;->mUserId:I

    .line 122
    return-void

    .line 129
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defAttrs"    # I

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    iput-boolean v3, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    .line 65
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings_ex/AppListPreference;->mSystemAppIndex:I

    .line 66
    iput v3, p0, Lcom/android/settings_ex/AppListPreference;->mType:I

    .line 115
    sget-object v2, Lcom/android/settings_ex/R$styleable;->WorkPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/AppListPreference;->mForWork:Z

    .line 117
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    .line 118
    .local v1, "managedProfile":Landroid/os/UserHandle;
    iget-boolean v2, p0, Lcom/android/settings_ex/AppListPreference;->mForWork:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/settings_ex/AppListPreference;->mUserId:I

    .line 112
    return-void

    .line 119
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 9

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "selectedValue":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 243
    iget-boolean v0, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 244
    .local v7, "selectedNone":Z
    :goto_0
    if-eqz v7, :cond_2

    const/4 v6, -0x1

    .line 245
    .local v6, "selectedIndex":I
    :goto_1
    new-instance v0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const v3, 0x7f04002b

    move-object v1, p0

    .line 245
    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;-><init>(Lcom/android/settings_ex/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    return-object v0

    .line 242
    .end local v6    # "selectedIndex":I
    .end local v7    # "selectedNone":Z
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 244
    .restart local v7    # "selectedNone":Z
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "selectedIndex":I
    goto :goto_1
.end method

.method protected getSoleAppLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 263
    instance-of v4, p1, Lcom/android/settings_ex/AppListPreference$SavedState;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 264
    check-cast v3, Lcom/android/settings_ex/AppListPreference$SavedState;

    .line 265
    .local v3, "savedState":Lcom/android/settings_ex/AppListPreference$SavedState;
    iget-boolean v4, v3, Lcom/android/settings_ex/AppListPreference$SavedState;->showItemNone:Z

    iput-boolean v4, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    .line 266
    iget v4, p0, Lcom/android/settings_ex/AppListPreference;->mType:I

    if-nez v4, :cond_1

    .line 267
    iget-object v4, v3, Lcom/android/settings_ex/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/android/settings_ex/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 278
    :cond_0
    :goto_0
    iget-object v4, v3, Lcom/android/settings_ex/AppListPreference$SavedState;->summaries:[Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/settings_ex/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 279
    iget-object v4, v3, Lcom/android/settings_ex/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-super {p0, v4}, Lcom/android/settings_ex/CustomListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 262
    .end local v3    # "savedState":Lcom/android/settings_ex/AppListPreference$SavedState;
    :goto_1
    return-void

    .line 268
    .restart local v3    # "savedState":Lcom/android/settings_ex/AppListPreference$SavedState;
    :cond_1
    iget v4, p0, Lcom/android/settings_ex/AppListPreference;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 269
    iget-object v4, v3, Lcom/android/settings_ex/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    array-length v2, v4

    .line 270
    .local v2, "len":I
    new-array v0, v2, [Landroid/content/ComponentName;

    .line 271
    .local v0, "entryValues":[Landroid/content/ComponentName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/settings_ex/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, v0, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 276
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/settings_ex/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 275
    invoke-virtual {p0, v0, v4}, Lcom/android/settings_ex/AppListPreference;->setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 281
    .end local v0    # "entryValues":[Landroid/content/ComponentName;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "savedState":Lcom/android/settings_ex/AppListPreference$SavedState;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings_ex/CustomListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/settings_ex/CustomListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 258
    .local v5, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/settings_ex/AppListPreference$SavedState;

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object v0
.end method

.method public setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentNames"    # [Landroid/content/ComponentName;
    .param p2, "defaultCN"    # Landroid/content/ComponentName;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings_ex/AppListPreference;->setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;[Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;[Ljava/lang/CharSequence;)V
    .locals 14
    .param p1, "componentNames"    # [Landroid/content/ComponentName;
    .param p2, "defaultCN"    # Landroid/content/ComponentName;
    .param p3, "summaries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 195
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/settings_ex/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 196
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/settings_ex/AppListPreference;->mType:I

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 200
    .local v7, "pm":Landroid/content/pm/PackageManager;
    array-length v11, p1

    iget-boolean v10, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    add-int v4, v11, v10

    .line 201
    .local v4, "entryCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v2, "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v9, "validatedComponentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v5, "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    const/4 v8, -0x1

    .line 205
    .local v8, "selectedIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v10, p1

    if-ge v6, v10, :cond_3

    .line 207
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 208
    aget-object v11, p1, v6

    iget v12, p0, Lcom/android/settings_ex/AppListPreference;->mUserId:I

    const/4 v13, 0x0

    .line 207
    invoke-interface {v10, v11, v13, v12}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 209
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_2

    .line 205
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 200
    .end local v2    # "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v4    # "entryCount":I
    .end local v5    # "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    .end local v6    # "i":I
    .end local v8    # "selectedIndex":I
    .end local v9    # "validatedComponentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 210
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v4    # "entryCount":I
    .restart local v5    # "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    .restart local v6    # "i":I
    .restart local v8    # "selectedIndex":I
    .restart local v9    # "validatedComponentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-virtual {v1, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    aget-object v10, p1, v6

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v1, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    if-eqz p2, :cond_0

    aget-object v10, p1, v6

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 214
    move v8, v6

    goto :goto_2

    .line 221
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_3
    iget-boolean v10, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    if-eqz v10, :cond_4

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0f79

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 222
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-string/jumbo v10, ""

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f020133

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 230
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    .line 229
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 231
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/graphics/drawable/Drawable;

    iput-object v10, p0, Lcom/android/settings_ex/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 233
    const/4 v10, -0x1

    if-eq v8, v10, :cond_5

    .line 234
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/AppListPreference;->setValueIndex(I)V

    .line 194
    :goto_3
    return-void

    .line 236
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 216
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/CharSequence;
    .param p2, "defaultPackageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings_ex/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "packageNames"    # [Ljava/lang/CharSequence;
    .param p2, "defaultPackageName"    # Ljava/lang/CharSequence;
    .param p3, "systemPackageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 144
    .local v6, "pm":Landroid/content/pm/PackageManager;
    array-length v10, p1

    iget-boolean v9, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    add-int v3, v10, v9

    .line 145
    .local v3, "entryCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .local v1, "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v8, "validatedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .local v4, "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    const/4 v7, -0x1

    .line 149
    .local v7, "selectedIndex":I
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/settings_ex/AppListPreference;->mSystemAppIndex:I

    .line 150
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, p1

    if-ge v5, v9, :cond_3

    .line 152
    :try_start_0
    aget-object v9, p1, v5

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 153
    iget v10, p0, Lcom/android/settings_ex/AppListPreference;->mUserId:I

    .line 152
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 154
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    if-eqz p2, :cond_0

    .line 158
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 157
    if-eqz v9, :cond_0

    .line 159
    move v7, v5

    .line 161
    :cond_0
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_1

    if-eqz p3, :cond_1

    .line 162
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 161
    if-eqz v9, :cond_1

    .line 163
    iput v5, p0, Lcom/android/settings_ex/AppListPreference;->mSystemAppIndex:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    .end local v1    # "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v3    # "entryCount":I
    .end local v4    # "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    .end local v5    # "i":I
    .end local v7    # "selectedIndex":I
    .end local v8    # "validatedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 170
    .restart local v1    # "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v3    # "entryCount":I
    .restart local v4    # "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    .restart local v5    # "i":I
    .restart local v7    # "selectedIndex":I
    .restart local v8    # "validatedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_3
    iget-boolean v9, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    if-eqz v9, :cond_4

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0f79

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 171
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string/jumbo v9, ""

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f020133

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-interface {v1, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 179
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    .line 178
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 180
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/android/settings_ex/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 182
    const/4 v9, -0x1

    if-eq v7, v9, :cond_5

    .line 183
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/AppListPreference;->setValueIndex(I)V

    .line 141
    :goto_3
    return-void

    .line 185
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 165
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method public setShowItemNone(Z)V
    .locals 0
    .param p1, "showItemNone"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/settings_ex/AppListPreference;->mShowItemNone:Z

    .line 132
    return-void
.end method

.method protected setSoleAppLabelAsSummary()V
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference;->getSoleAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 290
    .local v0, "soleLauncherLabel":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AppListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 288
    :cond_0
    return-void
.end method
