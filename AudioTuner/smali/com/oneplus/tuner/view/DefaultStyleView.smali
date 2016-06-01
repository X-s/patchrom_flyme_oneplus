.class public Lcom/oneplus/tuner/view/DefaultStyleView;
.super Landroid/widget/LinearLayout;
.source "DefaultStyleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;
    }
.end annotation


# instance fields
.field private mButtonIds:[I

.field private mButtons:[Landroid/widget/Button;

.field mContext:Landroid/content/Context;

.field private mDeaultLable:Landroid/widget/TextView;

.field public mDefaultStyleLayout:Landroid/view/View;

.field private mDefaultStyleLayoutContainer:Landroid/view/View;

.field private mDefaultView:Landroid/view/View;

.field private mHideListener:Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;

.field private mUsingItemView:Lcom/oppo/tribune/square/TribunePostItemView;

.field private mView:Lcom/oppo/tribune/square/SquareTopLineView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x10

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/oneplus/tuner/view/DefaultStyleView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/view/DefaultStyleView$1;-><init>(Lcom/oneplus/tuner/view/DefaultStyleView;)V

    iput-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mHideListener:Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;

    .line 45
    new-array v0, v1, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mButtons:[Landroid/widget/Button;

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mButtonIds:[I

    .line 56
    iput-object p1, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/oneplus/tuner/view/DefaultStyleView;->initView()V

    .line 58
    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x7f0b00d9
        0x7f0b00da
        0x7f0b00db
        0x7f0b00dc
        0x7f0b00de
        0x7f0b00df
        0x7f0b00e0
        0x7f0b00e1
        0x7f0b00e3
        0x7f0b00e4
        0x7f0b00e5
        0x7f0b00e6
        0x7f0b00e8
        0x7f0b00e9
        0x7f0b00ea
        0x7f0b00eb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x10

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Lcom/oneplus/tuner/view/DefaultStyleView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/view/DefaultStyleView$1;-><init>(Lcom/oneplus/tuner/view/DefaultStyleView;)V

    iput-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mHideListener:Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;

    .line 45
    new-array v0, v1, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mButtons:[Landroid/widget/Button;

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mButtonIds:[I

    .line 62
    iput-object p1, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/oneplus/tuner/view/DefaultStyleView;->initView()V

    .line 64
    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x7f0b00d9
        0x7f0b00da
        0x7f0b00db
        0x7f0b00dc
        0x7f0b00de
        0x7f0b00df
        0x7f0b00e0
        0x7f0b00e1
        0x7f0b00e3
        0x7f0b00e4
        0x7f0b00e5
        0x7f0b00e6
        0x7f0b00e8
        0x7f0b00e9
        0x7f0b00ea
        0x7f0b00eb
    .end array-data
.end method

.method private initView()V
    .locals 6

    .prologue
    const v5, 0x7f0c0688

    .line 86
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030023

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultView:Landroid/view/View;

    .line 88
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultView:Landroid/view/View;

    const v3, 0x7f0b00d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultStyleLayoutContainer:Landroid/view/View;

    .line 90
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultStyleLayoutContainer:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultView:Landroid/view/View;

    const v3, 0x7f0b00d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultStyleLayout:Landroid/view/View;

    .line 93
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultStyleLayout:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultView:Landroid/view/View;

    const v3, 0x7f0b00ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/square/TribunePostItemView;

    iput-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mUsingItemView:Lcom/oppo/tribune/square/TribunePostItemView;

    .line 97
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mUsingItemView:Lcom/oppo/tribune/square/TribunePostItemView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/square/TribunePostItemView;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "defaultStyleName":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 104
    iget-object v3, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mButtons:[Landroid/widget/Button;

    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultStyleLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mButtonIds:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v1

    .line 106
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mButtons:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mButtons:[Landroid/widget/Button;

    aget-object v2, v2, v1

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mButtons:[Landroid/widget/Button;

    aget-object v2, v2, v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    const v2, 0x7f0b00d6

    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/view/DefaultStyleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDeaultLable:Landroid/widget/TextView;

    .line 114
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-boolean v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDeaultLable:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_1
    return-void

    .line 117
    :cond_1
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-boolean v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    if-nez v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDeaultLable:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mUsingItemView:Lcom/oppo/tribune/square/TribunePostItemView;

    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/tuner/view/DefaultStyleView;->setUsingItemContent(Lcom/oppo/tribune/square/TribunePostItemView;Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 122
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mUsingItemView:Lcom/oppo/tribune/square/TribunePostItemView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/square/TribunePostItemView;->setVisibility(I)V

    .line 123
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mUsingItemView:Lcom/oppo/tribune/square/TribunePostItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/square/TribunePostItemView;->setSelected(Z)V

    goto :goto_1

    .line 125
    :cond_2
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDeaultLable:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private setUsingItemContent(Lcom/oppo/tribune/square/TribunePostItemView;Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 2
    .param p1, "mUsingItemView"    # Lcom/oppo/tribune/square/TribunePostItemView;
    .param p2, "mUsedSoundEffectData"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 133
    iget-object v0, p2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->setAuthor(Ljava/lang/String;)V

    .line 134
    iget-object v0, p2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->setSummary(Ljava/lang/String;)V

    .line 135
    iget v0, p2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/oppo/tribune/square/TribunePostItemView;->setPraiseNum(J)V

    .line 136
    iget-object v0, p2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    iget-wide v0, p2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    invoke-static {v0, v1}, Lcom/oppo/tribune/tool/TimeUtil;->getTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->setTime(Ljava/lang/String;)V

    .line 138
    return-void
.end method


# virtual methods
.method public click(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    const/4 v3, 0x0

    .line 144
    .local v3, "used":Z
    :try_start_0
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-object v2, v0

    .line 145
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/oneplus/tuner/providers/SoundEffectDao;->setDefaultUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 150
    :goto_0
    if-eqz v3, :cond_0

    .line 151
    iget-object v4, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDeaultLable:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v4, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultStyleLayout:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_0
    return-void

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getOnHideListener(Lcom/oppo/tribune/square/SquareTopLineView;)Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;
    .locals 1
    .param p1, "view"    # Lcom/oppo/tribune/square/SquareTopLineView;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mView:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 199
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mHideListener:Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, -0x1

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 183
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mView:Lcom/oppo/tribune/square/SquareTopLineView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v2, v2, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v2, v2, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    iget-wide v2, v2, Lcom/oppo/tribune/square/TopLineListAdapter;->mCurrentTid:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v2, v2, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    iput-wide v4, v2, Lcom/oppo/tribune/square/TopLineListAdapter;->mCurrentTid:J

    .line 186
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v2, v2, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-virtual {v2}, Lcom/oppo/tribune/square/TopLineListAdapter;->notifyDataSetChanged()V

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultStyleLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultStyleLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 175
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 176
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 177
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/DefaultStyleView;->click(I)V

    goto :goto_0

    .line 191
    .end local v0    # "index":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultStyleLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00d9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onDefaultEffectUsed()V
    .locals 3

    .prologue
    const v1, 0x7f0c0688

    const/16 v2, 0x8

    .line 67
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-boolean v0, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDeaultLable:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDeaultLable:Landroid/widget/TextView;

    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v1, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mUsingItemView:Lcom/oppo/tribune/square/TribunePostItemView;

    invoke-virtual {v0, v2}, Lcom/oppo/tribune/square/TribunePostItemView;->setVisibility(I)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDeaultLable:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDeaultLable:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mUsingItemView:Lcom/oppo/tribune/square/TribunePostItemView;

    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/tuner/view/DefaultStyleView;->setUsingItemContent(Lcom/oppo/tribune/square/TribunePostItemView;Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 77
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mUsingItemView:Lcom/oppo/tribune/square/TribunePostItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/TribunePostItemView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mUsingItemView:Lcom/oppo/tribune/square/TribunePostItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/TribunePostItemView;->setSelected(Z)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDeaultLable:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDeaultLable:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView;->mUsingItemView:Lcom/oppo/tribune/square/TribunePostItemView;

    invoke-virtual {v0, v2}, Lcom/oppo/tribune/square/TribunePostItemView;->setVisibility(I)V

    goto :goto_0
.end method
