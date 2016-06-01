.class public Lcom/oppo/tribune/ui/LoadingView;
.super Landroid/widget/FrameLayout;
.source "LoadingView.java"

# interfaces
.implements Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadErrorImg:Landroid/widget/ImageView;

.field private mLoadErrorLayout:Landroid/widget/LinearLayout;

.field private mLoadErrorTipsTxv:Landroid/widget/TextView;

.field private mLoadingLayout:Landroid/widget/LinearLayout;

.field private mLoadingText:Landroid/widget/TextView;

.field private mSubmitModel:Lcom/oppo/tribune/packshow/parse/SubmitReportModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/LoadingView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/LoadingView;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oppo/tribune/ui/LoadingView;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030033

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/LoadingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f0b012f

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 69
    iget-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadingLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0130

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadingText:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0b0131

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    .line 71
    iget-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0133

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorTipsTxv:Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0132

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorImg:Landroid/widget/ImageView;

    .line 75
    return-void
.end method

.method private initSubmitData()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;

    invoke-direct {v0}, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/ui/LoadingView;->mSubmitModel:Lcom/oppo/tribune/packshow/parse/SubmitReportModel;

    .line 181
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadingView;->mSubmitModel:Lcom/oppo/tribune/packshow/parse/SubmitReportModel;

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;->setSubmitInfoListener(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;)V

    .line 182
    return-void
.end method

.method private preSubmitReport()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-direct {p0}, Lcom/oppo/tribune/ui/LoadingView;->initSubmitData()V

    .line 186
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadingView;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06f0

    invoke-static {v0, v1, v4}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-wide v0, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadingView;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ba

    invoke-static {v0, v1, v4}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadingView;->mSubmitModel:Lcom/oppo/tribune/packshow/parse/SubmitReportModel;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadingView;->mSubmitModel:Lcom/oppo/tribune/packshow/parse/SubmitReportModel;

    iget-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;->startSubmitTask(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startAnimation(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 145
    new-instance v0, Lcom/oppo/tribune/ui/LoadingView$1;

    invoke-direct {v0, p0, p2}, Lcom/oppo/tribune/ui/LoadingView$1;-><init>(Lcom/oppo/tribune/ui/LoadingView;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method private stopAnimation(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 163
    new-instance v0, Lcom/oppo/tribune/ui/LoadingView$2;

    invoke-direct {v0, p0, p2}, Lcom/oppo/tribune/ui/LoadingView$2;-><init>(Lcom/oppo/tribune/ui/LoadingView;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public hideLoadingView()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/LoadingView;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public onCancelSumbit()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onDefaultEffectUsed()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onFinishSumbit(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 210
    if-nez p1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c05fb

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 233
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 216
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 217
    iget-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06dc

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 219
    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/tuner/utillty/TunerConstant;->isRequest:Z

    goto :goto_0

    .line 220
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06de

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06dd

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 226
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 227
    iget-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06df

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 230
    :cond_4
    iget-object v1, p0, Lcom/oppo/tribune/ui/LoadingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06e0

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onFinishSumbit(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/ui/LoadingView;->onFinishSumbit(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreSumbit()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public showLoadingError(IIIILandroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "txtId1"    # I
    .param p3, "txtId2"    # I
    .param p4, "imgId"    # I
    .param p5, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-virtual {p0, v4}, Lcom/oppo/tribune/ui/LoadingView;->setVisibility(I)V

    .line 129
    const v2, 0x7f0b00bf

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/ui/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 130
    .local v1, "imageViewLoading":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 132
    .local v0, "animationLoading":Landroid/graphics/drawable/AnimationDrawable;
    invoke-direct {p0, v1, v0}, Lcom/oppo/tribune/ui/LoadingView;->stopAnimation(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 134
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadingLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorTipsTxv:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorTipsTxv:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorImg:Landroid/widget/ImageView;

    invoke-virtual {v2, p5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method public showLoadingError(ILandroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "cause"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0, v4}, Lcom/oppo/tribune/ui/LoadingView;->setVisibility(I)V

    .line 107
    const v2, 0x7f0b00bf

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/ui/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 108
    .local v1, "imageViewLoading":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 110
    .local v0, "animationLoading":Landroid/graphics/drawable/AnimationDrawable;
    invoke-direct {p0, v1, v0}, Lcom/oppo/tribune/ui/LoadingView;->stopAnimation(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 111
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadingLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorTipsTxv:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorImg:Landroid/widget/ImageView;

    const v3, 0x7f02017f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorTipsTxv:Landroid/widget/TextView;

    const v3, 0x7f0c059b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 123
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorImg:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void

    .line 119
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorImg:Landroid/widget/ImageView;

    const v3, 0x7f02017d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorTipsTxv:Landroid/widget/TextView;

    const v3, 0x7f0c058e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public showLoadingError(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 101
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/oppo/tribune/ui/LoadingView;->showLoadingError(ILandroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method public showLoadingProcess()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0, v3}, Lcom/oppo/tribune/ui/LoadingView;->setVisibility(I)V

    .line 86
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    const v2, 0x7f0b00bf

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/ui/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 89
    .local v1, "imageViewLoading":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 91
    .local v0, "animationLoading":Landroid/graphics/drawable/AnimationDrawable;
    invoke-direct {p0, v1, v0}, Lcom/oppo/tribune/ui/LoadingView;->startAnimation(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 92
    iget-object v2, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    return-void
.end method

.method public showLoadingProcess(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadingView;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/LoadingView;->showLoadingProcess()V

    .line 98
    return-void
.end method
