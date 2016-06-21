.class Lcom/android/systemui_ex/recents/views/RecentsView$2;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/RecentsView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/RecentsView;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/RecentsView$2;->this$0:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView$2;->this$0:Lcom/android/systemui_ex/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/RecentsView;->mCb:Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView$2;->this$0:Lcom/android/systemui_ex/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/RecentsView;->mCb:Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;->onHasClearRecents(Z)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/RecentsView$2;->this$0:Lcom/android/systemui_ex/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/RecentsView;->dismissAllTasksAnimated()V

    .line 369
    return-void
.end method
