.class Lcom/android/server/policy/UcFingerScrollView$4;
.super Ljava/lang/Object;
.source "UcFingerScrollView.java"

# interfaces
.implements Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/UcFingerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/UcFingerScrollView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/UcFingerScrollView;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/server/policy/UcFingerScrollView$4;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlingStarted()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public onFlingStopped()V
    .locals 5

    .prologue
    const/16 v4, 0x807

    const/16 v3, 0x320

    .line 220
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$4;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    invoke-virtual {v1}, Lcom/android/server/policy/UcFingerScrollView;->getScrollY()I

    move-result v0

    .line 222
    .local v0, "scrollPosY":I
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$4;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    # getter for: Lcom/android/server/policy/UcFingerScrollView;->mYVelocity:I
    invoke-static {v1}, Lcom/android/server/policy/UcFingerScrollView;->access$500(Lcom/android/server/policy/UcFingerScrollView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView$4;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    # getter for: Lcom/android/server/policy/UcFingerScrollView;->mMinYVelocity:I
    invoke-static {v2}, Lcom/android/server/policy/UcFingerScrollView;->access$600(Lcom/android/server/policy/UcFingerScrollView;)I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$4;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    # getter for: Lcom/android/server/policy/UcFingerScrollView;->mMinYVelocity:I
    invoke-static {v1}, Lcom/android/server/policy/UcFingerScrollView;->access$600(Lcom/android/server/policy/UcFingerScrollView;)I

    move-result v1

    if-nez v1, :cond_1

    .line 223
    :cond_0
    if-lt v0, v4, :cond_2

    .line 224
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$4;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    iget-object v1, v1, Lcom/android/server/policy/UcFingerScrollView;->mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    invoke-interface {v1}, Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;->onScrollToExit()V

    .line 232
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    if-ge v0, v4, :cond_3

    const/16 v1, 0x3c0

    if-lt v0, v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$4;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    # invokes: Lcom/android/server/policy/UcFingerScrollView;->restoreScrollerToBase(II)V
    invoke-static {v1, v0, v3}, Lcom/android/server/policy/UcFingerScrollView;->access$300(Lcom/android/server/policy/UcFingerScrollView;II)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$4;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    # invokes: Lcom/android/server/policy/UcFingerScrollView;->restoreScrollerToShutdown(II)V
    invoke-static {v1, v0, v3}, Lcom/android/server/policy/UcFingerScrollView;->access$400(Lcom/android/server/policy/UcFingerScrollView;II)V

    goto :goto_0
.end method
