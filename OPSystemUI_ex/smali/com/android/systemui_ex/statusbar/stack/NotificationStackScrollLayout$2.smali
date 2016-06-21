.class Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$2;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    .prologue
    .line 2373
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$2;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$2;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    # getter for: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$200(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->setVisibility(I)V

    .line 2377
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$2;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    # getter for: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$200(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    .line 2378
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$2;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    # invokes: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$300(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2379
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$2;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$2;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    # getter for: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$400(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui_ex/statusbar/DismissView;

    move-result-object v1

    # invokes: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui_ex/statusbar/ExpandableView;)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$500(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    .line 2380
    return-void
.end method
