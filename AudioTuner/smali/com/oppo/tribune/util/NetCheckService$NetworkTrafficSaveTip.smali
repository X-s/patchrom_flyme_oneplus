.class Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;
.super Ljava/lang/Object;
.source "NetCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/util/NetCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkTrafficSaveTip"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mToast:Landroid/widget/Toast;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;->mContext:Landroid/content/Context;

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;->mType:I

    .line 392
    return-void
.end method

.method private isMobileType(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 438
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiType(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 443
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "text"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;->mToast:Landroid/widget/Toast;

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 435
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onTypeChanged(II)V
    .locals 0
    .param p1, "preType"    # I
    .param p2, "type"    # I

    .prologue
    .line 425
    return-void
.end method

.method public trackType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;->mType:I

    invoke-virtual {p0, v0, p1}, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;->onTypeChanged(II)V

    .line 400
    iput p1, p0, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;->mType:I

    goto :goto_0
.end method
