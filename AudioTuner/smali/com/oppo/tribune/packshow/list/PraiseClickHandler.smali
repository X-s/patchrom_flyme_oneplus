.class public Lcom/oppo/tribune/packshow/list/PraiseClickHandler;
.super Ljava/lang/Object;
.source "PraiseClickHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;
    }
.end annotation


# static fields
.field public static PRAISE_ANIMATION_END:I

.field public static PRAISE_ANIMATION_START:I

.field public static PRAISE_PARSE_FAILED:I

.field public static PRAISE_PARSE_START:I

.field public static PRAISE_PARSE_SUCCESS:I


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mModel:Lcom/oppo/tribune/packshow/HandlePraiseModel;

.field protected mPraisePostCallback:Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_ANIMATION_START:I

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_ANIMATION_END:I

    .line 32
    const/4 v0, 0x3

    sput v0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_PARSE_START:I

    .line 33
    const/4 v0, 0x4

    sput v0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_PARSE_SUCCESS:I

    .line 34
    const/4 v0, 0x5

    sput v0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_PARSE_FAILED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method protected checkHavePraise(ZLandroid/widget/TextView;)Z
    .locals 4
    .param p1, "havePraise"    # Z
    .param p2, "praiseTxv"    # Landroid/widget/TextView;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "result":Z
    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->getTagParseFromTxv(Landroid/widget/TextView;)I

    move-result v1

    sget v2, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_PARSE_SUCCESS:I

    if-ne v1, v2, :cond_1

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06cf

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 95
    const/4 v0, 0x1

    .line 97
    :cond_1
    return v0
.end method

.method protected checkLogin()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/LoginUtils;->isLoginStatus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected checkNetwork()Z
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v0

    .line 71
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06f0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 74
    :cond_0
    return v0
.end method

.method protected checkPraiseSelf(J)Z
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "result":Z
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    sget-wide v2, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06cc

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 86
    const/4 v0, 0x1

    .line 88
    :cond_0
    return v0
.end method

.method public clearTxvTag(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "imgTxv"    # Landroid/widget/TextView;

    .prologue
    const/4 v3, -0x1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->getTagModelFromTxv(Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    move-result-object v0

    .line 58
    .local v0, "model":Lcom/oppo/tribune/packshow/HandlePraiseModel;
    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Lcom/oppo/tribune/packshow/HandlePraiseModel;->cancelHandle()V

    .line 61
    :cond_0
    const v1, 0x7f0b000e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 62
    const v1, 0x7f0b000f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 63
    const v1, 0x7f0b0010

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 65
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 67
    .end local v0    # "model":Lcom/oppo/tribune/packshow/HandlePraiseModel;
    :cond_1
    return-void
.end method

.method public destory()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mModel:Lcom/oppo/tribune/packshow/HandlePraiseModel;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mModel:Lcom/oppo/tribune/packshow/HandlePraiseModel;

    invoke-interface {v0}, Lcom/oppo/tribune/packshow/HandlePraiseModel;->cancelHandle()V

    .line 279
    :cond_0
    invoke-static {}, Lcom/oppo/tribune/ui/CustomToast;->cancelToast()V

    .line 280
    return-void
.end method

.method protected getAnimLsn(Landroid/widget/TextView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .param p1, "imgTxv"    # Landroid/widget/TextView;

    .prologue
    .line 175
    new-instance v0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;

    invoke-direct {v0, p0, p1}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;-><init>(Lcom/oppo/tribune/packshow/list/PraiseClickHandler;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public getPraiseClkLsn(ILcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;Landroid/widget/TextView;Z)Landroid/view/View$OnClickListener;
    .locals 7
    .param p1, "position"    # I
    .param p2, "entity"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p3, "praiseTxv"    # Landroid/widget/TextView;
    .param p4, "imgTxv"    # Landroid/widget/TextView;
    .param p5, "havePraise"    # Z

    .prologue
    .line 117
    new-instance v0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;-><init>(Lcom/oppo/tribune/packshow/list/PraiseClickHandler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;Landroid/widget/TextView;ZI)V

    return-object v0
.end method

.method protected getPraiseListener(ILcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;
    .locals 1
    .param p1, "position"    # I
    .param p2, "entity"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p3, "praiseTxv"    # Landroid/widget/TextView;
    .param p4, "imgTxv"    # Landroid/widget/TextView;

    .prologue
    .line 239
    new-instance v0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;

    invoke-direct {v0, p0, p4, p3, p2}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;-><init>(Lcom/oppo/tribune/packshow/list/PraiseClickHandler;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    return-object v0
.end method

.method protected getTagAnimFromTxv(Landroid/widget/TextView;)I
    .locals 3
    .param p1, "txv"    # Landroid/widget/TextView;

    .prologue
    .line 215
    const/4 v0, -0x1

    .line 216
    .local v0, "result":I
    if-eqz p1, :cond_0

    .line 217
    const v2, 0x7f0b000f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 218
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 219
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 222
    :cond_0
    return v0
.end method

.method protected getTagModelFromTxv(Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePackPraiseModel;
    .locals 3
    .param p1, "txv"    # Landroid/widget/TextView;

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "result":Lcom/oppo/tribune/packshow/HandlePackPraiseModel;
    if-eqz p1, :cond_0

    .line 228
    const v2, 0x7f0b0010

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 229
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 230
    check-cast v0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    .line 233
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method protected getTagParseFromTxv(Landroid/widget/TextView;)I
    .locals 3
    .param p1, "txv"    # Landroid/widget/TextView;

    .prologue
    .line 204
    const/4 v0, -0x1

    .line 205
    .local v0, "result":I
    if-eqz p1, :cond_0

    .line 206
    const v2, 0x7f0b000e

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 207
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 208
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 211
    :cond_0
    return v0
.end method

.method public setPraiseCallback(Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mPraisePostCallback:Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;

    .line 47
    return-void
.end method

.method protected startScaleAnim(Landroid/widget/TextView;)V
    .locals 11
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 153
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 155
    .local v10, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3fa66666    # 1.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fa66666    # 1.3f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 158
    .local v0, "scaleAnimUp":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 159
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 161
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 164
    .local v1, "scaleAnimDown":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 165
    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 166
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->getAnimLsn(Landroid/widget/TextView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 171
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
