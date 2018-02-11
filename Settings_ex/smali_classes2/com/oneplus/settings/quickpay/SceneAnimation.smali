.class public Lcom/oneplus/settings/quickpay/SceneAnimation;
.super Ljava/lang/Object;
.source "SceneAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quickpay/SceneAnimation$1;
    }
.end annotation


# instance fields
.field private final MSG_PLAY:I

.field private final MSG_STOP:I

.field private mDuration:I

.field private mDurations:[I

.field private mFrameRess:[I

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mLastFrameNo:I

.field private starting:Z


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/quickpay/SceneAnimation;)[I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mFrameRess:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/quickpay/SceneAnimation;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/quickpay/SceneAnimation;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mLastFrameNo:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/quickpay/SceneAnimation;I)V
    .locals 0
    .param p1, "pFrameNo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/SceneAnimation;->play(I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;[II)V
    .locals 3
    .param p1, "pImageView"    # Landroid/widget/ImageView;
    .param p2, "pFrameRess"    # [I
    .param p3, "pDuration"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->MSG_PLAY:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->MSG_STOP:I

    .line 21
    new-instance v0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/SceneAnimation$1;-><init>(Lcom/oneplus/settings/quickpay/SceneAnimation;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mHandler:Landroid/os/Handler;

    .line 44
    iput-boolean v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->starting:Z

    .line 74
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mImageView:Landroid/widget/ImageView;

    .line 75
    iput-object p2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mFrameRess:[I

    .line 76
    iput p3, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mDuration:I

    .line 77
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mLastFrameNo:I

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mFrameRess:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->stop()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;[IIJ)V
    .locals 3
    .param p1, "pImageView"    # Landroid/widget/ImageView;
    .param p2, "pFrameRess"    # [I
    .param p3, "pDuration"    # I
    .param p4, "pBreakDelay"    # J

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->MSG_PLAY:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->MSG_STOP:I

    .line 21
    new-instance v0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/SceneAnimation$1;-><init>(Lcom/oneplus/settings/quickpay/SceneAnimation;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mHandler:Landroid/os/Handler;

    .line 44
    iput-boolean v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->starting:Z

    .line 91
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mImageView:Landroid/widget/ImageView;

    .line 92
    iput-object p2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mFrameRess:[I

    .line 93
    iput p3, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mDuration:I

    .line 94
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mLastFrameNo:I

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mFrameRess:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->stop()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;[I[I)V
    .locals 3
    .param p1, "pImageView"    # Landroid/widget/ImageView;
    .param p2, "pFrameRess"    # [I
    .param p3, "pDurations"    # [I

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->MSG_PLAY:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->MSG_STOP:I

    .line 21
    new-instance v0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/SceneAnimation$1;-><init>(Lcom/oneplus/settings/quickpay/SceneAnimation;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mHandler:Landroid/os/Handler;

    .line 44
    iput-boolean v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->starting:Z

    .line 58
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mImageView:Landroid/widget/ImageView;

    .line 59
    iput-object p2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mFrameRess:[I

    .line 60
    iput-object p3, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mDurations:[I

    .line 61
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mLastFrameNo:I

    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mFrameRess:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->stop()V

    .line 57
    return-void
.end method

.method private play(I)V
    .locals 4
    .param p1, "pFrameNo"    # I

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-boolean v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->starting:Z

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 105
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 106
    iput v2, v0, Landroid/os/Message;->what:I

    .line 107
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 99
    return-void
.end method


# virtual methods
.method public isStarting()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->starting:Z

    return v0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->starting:Z

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->play(I)V

    .line 110
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->starting:Z

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method
