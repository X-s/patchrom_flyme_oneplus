.class Lcom/android/server/policy/UcGlobalActions$4;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/UcGlobalActions;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/server/policy/UcGlobalActions$4;->this$0:Lcom/android/server/policy/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$4;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mLayoutFinished:Z
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$400(Lcom/android/server/policy/UcGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$4;->this$0:Lcom/android/server/policy/UcGlobalActions;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/UcGlobalActions;->mLayoutFinished:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/UcGlobalActions;->access$402(Lcom/android/server/policy/UcGlobalActions;Z)Z

    .line 293
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$4;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mFingerScrollView:Lcom/android/server/policy/UcFingerScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$500(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcFingerScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/UcFingerScrollView;->phaseIn()V

    .line 294
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$4;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mOverlayScrollView:Lcom/android/server/policy/UcOverlayScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$600(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcOverlayScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/UcOverlayScrollView;->phaseIn()V

    .line 295
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$4;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mIconScrollView:Lcom/android/server/policy/UcIconScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$700(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcIconScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/UcIconScrollView;->phaseIn()V

    .line 296
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$4;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mScreenshotScrollView:Lcom/android/server/policy/UcScreenshotScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$800(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcScreenshotScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/UcScreenshotScrollView;->phaseIn()V

    .line 298
    :cond_0
    return-void
.end method
