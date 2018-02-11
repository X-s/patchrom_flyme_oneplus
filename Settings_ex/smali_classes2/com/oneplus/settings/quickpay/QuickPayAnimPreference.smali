.class public Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;
.super Landroid/support/v7/preference/Preference;
.source "QuickPayAnimPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;,
        Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x10

.field private static final MSG_PLAY:I

.field private static pFrameRess:[I


# instance fields
.field private img_quickpay_instructions:Landroid/widget/ImageView;

.field private img_quickpay_phone_ui:Landroid/widget/ImageView;

.field private img_quickpay_play:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;

.field private resid:I

.field private sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->startOrStopAnim()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 24
    const v0, 0x7f04010c

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->resid:I

    .line 36
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mHandler:Landroid/os/Handler;

    .line 60
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->initViews(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const v0, 0x7f04010c

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->resid:I

    .line 36
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mHandler:Landroid/os/Handler;

    .line 55
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->initViews(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const v0, 0x7f04010c

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->resid:I

    .line 36
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->initViews(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public static autoGenericCode(II)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I
    .param p1, "num"    # I

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mContext:Landroid/content/Context;

    .line 65
    iget v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->resid:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->setLayoutResource(I)V

    .line 63
    return-void
.end method

.method private startAnim()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/oneplus/settings/quickpay/SceneAnimation;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_instructions:Landroid/widget/ImageView;

    sget-object v2, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/quickpay/SceneAnimation;-><init>(Landroid/widget/ImageView;[II)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->play()V

    .line 117
    return-void
.end method

.method private startOrStopAnim()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->stopAnim()V

    .line 111
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->startAnim()V

    .line 108
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 71
    const v3, 0x7f110242

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    .line 72
    const v3, 0x7f110241

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_instructions:Landroid/widget/ImageView;

    .line 73
    const v3, 0x7f110240

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_phone_ui:Landroid/widget/ImageView;

    .line 74
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_instructions:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_phone_ui:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    if-nez v3, :cond_0

    .line 78
    const/16 v3, 0x99

    new-array v3, v3, [I

    sput-object v3, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    .line 79
    const/16 v1, 0x19

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xb2

    if-ge v1, v3, :cond_0

    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "quick_pay_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v1, v5}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "drawable"

    iget-object v6, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 82
    .local v2, "resId":I
    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    aput v2, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v2    # "resId":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-nez v3, :cond_1

    .line 89
    new-instance v3, Lcom/oneplus/settings/quickpay/SceneAnimation;

    iget-object v4, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_instructions:Landroid/widget/ImageView;

    sget-object v5, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    const/16 v6, 0x10

    invoke-direct {v3, v4, v5, v6}, Lcom/oneplus/settings/quickpay/SceneAnimation;-><init>(Landroid/widget/ImageView;[II)V

    iput-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    .line 69
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mListener:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mListener:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;

    invoke-interface {v0, p1}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;->onPreferenceViewClick(Landroid/view/View;)V

    .line 151
    :cond_0
    return-void
.end method

.method public playOrStopAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    return-void
.end method

.method public setViewOnClick(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mListener:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;

    .line 93
    return-void
.end method

.method public stopAnim()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->stop()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    :cond_1
    return-void
.end method
