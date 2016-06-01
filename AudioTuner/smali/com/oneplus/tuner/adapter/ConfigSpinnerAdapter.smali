.class public Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ConfigSpinnerAdapter.java"


# instance fields
.field private mDefaultStyle:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const v0, 0x7f03006b

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;->mDefaultStyle:[Ljava/lang/String;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getModel(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "model":Ljava/lang/String;
    const/4 v0, 0x0

    .line 84
    .local v0, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 85
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 90
    .restart local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :goto_0
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    .line 93
    :cond_0
    return-object v1

    .line 87
    :cond_1
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .restart local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    goto :goto_0
.end method

.method public getStyle(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "style":Ljava/lang/String;
    const/4 v0, 0x0

    .line 66
    .local v0, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 67
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 72
    .restart local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :goto_0
    if-eqz v0, :cond_1

    .line 73
    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 78
    :goto_1
    return-object v1

    .line 69
    :cond_0
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .restart local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    goto :goto_0

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;->mDefaultStyle:[Ljava/lang/String;

    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v3, p1, v3

    aget-object v1, v2, v3

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    if-nez p2, :cond_0

    .line 36
    iget-object v3, p0, Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03006b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 39
    :cond_0
    const v3, 0x7f0b0062

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    .local v1, "tv1":Landroid/widget/TextView;
    const v3, 0x7f0b0161

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, "tv2":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 44
    .local v0, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 45
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 51
    .restart local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :goto_0
    if-eqz v0, :cond_2

    .line 52
    iget-object v3, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v3, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_1
    return-object p2

    .line 47
    :cond_1
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .restart local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    goto :goto_0

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;->mDefaultStyle:[Ljava/lang/String;

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, p1, v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
