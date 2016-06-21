.class Lcom/android/systemui_ex/SwipeHelper$1;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/SwipeHelper;

.field final synthetic val$ev:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/systemui_ex/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui_ex/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 277
    iget-object v2, p0, Lcom/android/systemui_ex/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui_ex/SwipeHelper;->access$000(Lcom/android/systemui_ex/SwipeHelper;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mLongPressSent:Z
    invoke-static {v2}, Lcom/android/systemui_ex/SwipeHelper;->access$100(Lcom/android/systemui_ex/SwipeHelper;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/systemui_ex/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # setter for: Lcom/android/systemui_ex/SwipeHelper;->mLongPressSent:Z
    invoke-static {v2, v5}, Lcom/android/systemui_ex/SwipeHelper;->access$102(Lcom/android/systemui_ex/SwipeHelper;Z)Z

    .line 279
    iget-object v2, p0, Lcom/android/systemui_ex/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui_ex/SwipeHelper;->access$000(Lcom/android/systemui_ex/SwipeHelper;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 281
    iget-object v2, p0, Lcom/android/systemui_ex/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui_ex/SwipeHelper;->access$000(Lcom/android/systemui_ex/SwipeHelper;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mTmpPos:[I
    invoke-static {v3}, Lcom/android/systemui_ex/SwipeHelper;->access$200(Lcom/android/systemui_ex/SwipeHelper;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 282
    iget-object v2, p0, Lcom/android/systemui_ex/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui_ex/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mTmpPos:[I
    invoke-static {v3}, Lcom/android/systemui_ex/SwipeHelper;->access$200(Lcom/android/systemui_ex/SwipeHelper;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v0, v2, v3

    .line 283
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/systemui_ex/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui_ex/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mTmpPos:[I
    invoke-static {v3}, Lcom/android/systemui_ex/SwipeHelper;->access$200(Lcom/android/systemui_ex/SwipeHelper;)[I

    move-result-object v3

    aget v3, v3, v5

    sub-int v1, v2, v3

    .line 284
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/systemui_ex/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mLongPressListener:Lcom/android/systemui_ex/SwipeHelper$LongPressListener;
    invoke-static {v2}, Lcom/android/systemui_ex/SwipeHelper;->access$300(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/SwipeHelper$LongPressListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/SwipeHelper$1;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui_ex/SwipeHelper;->access$000(Lcom/android/systemui_ex/SwipeHelper;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/android/systemui_ex/SwipeHelper$LongPressListener;->onLongPress(Landroid/view/View;II)Z

    .line 286
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    return-void
.end method
