.class Lcom/android/server/policy/UcFingerScrollView$1;
.super Ljava/lang/Object;
.source "UcFingerScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/UcFingerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 38
    iput-object p1, p0, Lcom/android/server/policy/UcFingerScrollView$1;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$1;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    invoke-virtual {v1}, Lcom/android/server/policy/UcFingerScrollView;->getScrollY()I

    move-result v0

    .line 42
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$1;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    # getter for: Lcom/android/server/policy/UcFingerScrollView;->mPreviousPosition:I
    invoke-static {v1}, Lcom/android/server/policy/UcFingerScrollView;->access$000(Lcom/android/server/policy/UcFingerScrollView;)I

    move-result v1

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$1;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    # getter for: Lcom/android/server/policy/UcFingerScrollView;->mFlingListener:Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;
    invoke-static {v1}, Lcom/android/server/policy/UcFingerScrollView;->access$100(Lcom/android/server/policy/UcFingerScrollView;)Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;->onFlingStopped()V

    .line 44
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$1;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView$1;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    # getter for: Lcom/android/server/policy/UcFingerScrollView;->mScrollChecker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/policy/UcFingerScrollView;->access$200(Lcom/android/server/policy/UcFingerScrollView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/UcFingerScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$1;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView$1;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    invoke-virtual {v2}, Lcom/android/server/policy/UcFingerScrollView;->getScrollY()I

    move-result v2

    # setter for: Lcom/android/server/policy/UcFingerScrollView;->mPreviousPosition:I
    invoke-static {v1, v2}, Lcom/android/server/policy/UcFingerScrollView;->access$002(Lcom/android/server/policy/UcFingerScrollView;I)I

    .line 47
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView$1;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView$1;->this$0:Lcom/android/server/policy/UcFingerScrollView;

    # getter for: Lcom/android/server/policy/UcFingerScrollView;->mScrollChecker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/policy/UcFingerScrollView;->access$200(Lcom/android/server/policy/UcFingerScrollView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x10

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/policy/UcFingerScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
