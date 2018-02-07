.class public abstract Lcom/oneplus/lib/preference/PreferenceGroup;
.super Lcom/oneplus/lib/preference/Preference;
.source "PreferenceGroup.java"

# interfaces
.implements Lcom/oneplus/lib/preference/GenericInflater$Parent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/preference/Preference;",
        "Lcom/oneplus/lib/preference/GenericInflater$Parent",
        "<",
        "Lcom/oneplus/lib/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttachedToActivity:Z

.field private mCurrentPreferenceOrder:I

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 53
    iput v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 55
    iput-boolean v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 63
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->PreferenceGroup:[I

    .line 62
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->PreferenceGroup_android_orderingFromXml:I

    .line 65
    iget-boolean v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method

.method private removePreferenceInt(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .prologue
    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->onPrepareForRemoval()V

    .line 191
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addItemFromInflater(Lcom/oneplus/lib/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->addPreference(Lcom/oneplus/lib/preference/Preference;)Z

    .line 105
    return-void
.end method

.method public bridge synthetic addItemFromInflater(Ljava/lang/Object;)V
    .locals 0
    .param p1, "preference"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Lcom/oneplus/lib/preference/Preference;

    .end local p1    # "preference":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->addItemFromInflater(Lcom/oneplus/lib/preference/Preference;)V

    return-void
.end method

.method public addPreference(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    return v4

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getOrder()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 141
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v1, :cond_1

    .line 142
    iget v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/preference/Preference;->setOrder(I)V

    .line 145
    :cond_1
    instance-of v1, p1, Lcom/oneplus/lib/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 148
    check-cast v1, Lcom/oneplus/lib/preference/PreferenceGroup;

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 153
    .local v0, "insertionIndex":I
    if-gez v0, :cond_3

    .line 154
    mul-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 157
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->onPrepareAddPreference(Lcom/oneplus/lib/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 158
    return v3

    .line 161
    :cond_4
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/preference/Preference;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    .line 167
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    if-eqz v1, :cond_5

    .line 168
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->onAttachedToActivity()V

    .line 171
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 173
    return v4

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 322
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 325
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 326
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 327
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 314
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 315
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 316
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;
    .locals 7
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    return-object p0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 237
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 238
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    .line 239
    .local v2, "preference":Lcom/oneplus/lib/preference/Preference;
    invoke-virtual {v2}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    return-object v2

    .line 245
    :cond_1
    instance-of v5, v2, Lcom/oneplus/lib/preference/PreferenceGroup;

    if-eqz v5, :cond_2

    .line 246
    check-cast v2, Lcom/oneplus/lib/preference/PreferenceGroup;

    .end local v2    # "preference":Lcom/oneplus/lib/preference/Preference;
    invoke-virtual {v2, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v4

    .line 248
    .local v4, "returnedPreference":Lcom/oneplus/lib/preference/Preference;
    if-eqz v4, :cond_2

    .line 249
    return-object v4

    .line 237
    .end local v4    # "returnedPreference":Lcom/oneplus/lib/preference/Preference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_3
    return-object v6
.end method

.method public getPreference(I)Lcom/oneplus/lib/preference/Preference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/preference/Preference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3
    .param p1, "disableDependents"    # Z

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 298
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 299
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/oneplus/lib/preference/Preference;->onParentChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 3

    .prologue
    .line 270
    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onAttachedToActivity()V

    .line 274
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 277
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 278
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 279
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/Preference;->onAttachedToActivity()V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/preference/Preference;->onParentChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onPrepareForRemoval()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 284
    return-void
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 201
    .local v1, "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/Preference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 202
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/preference/Preference;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/preference/PreferenceGroup;->removePreferenceInt(Lcom/oneplus/lib/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 198
    return-void

    .line 199
    .end local v0    # "i":I
    .end local v1    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/Preference;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removePreference(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->removePreferenceInt(Lcom/oneplus/lib/preference/Preference;)Z

    move-result v0

    .line 184
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 185
    return v0
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 88
    return-void
.end method

.method sortPreferences()V
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 303
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
