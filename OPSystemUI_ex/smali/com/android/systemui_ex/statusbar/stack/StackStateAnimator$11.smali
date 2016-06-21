.class Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$11;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

.field final synthetic val$changingView:Lcom/android/systemui_ex/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$11;->this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$11;->val$changingView:Lcom/android/systemui_ex/statusbar/ExpandableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$11;->this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$11;->val$changingView:Lcom/android/systemui_ex/statusbar/ExpandableView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 856
    return-void
.end method
